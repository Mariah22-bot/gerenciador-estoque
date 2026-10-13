import argparse
import os
import re
import unicodedata
from decimal import Decimal, InvalidOperation
from pathlib import Path
from typing import TypedDict

import pandas as pd
import psycopg2

ROOT = Path(__file__).parent
DEFAULT_EXCEL_PATH = ROOT / 'produtos-estoque.xlsx'


class Product(TypedDict):
	fonte: str
	secao: str | None
	produto: str
	modelo: str | None
	cor: str | None
	tamanho: str | None
	quantidade: int | None
	unidade: str
	tecido_composicao: str | None
	item: str | None
	medida: str | None
	observacoes: str | None


FIELD_ALIASES = {
	'fonte': {'fonte', 'source', 'origem'},
	'secao': {'secao', 'section', 'categoria', 'category'},
	'produto': {'produto', 'product', 'nome', 'name', 'nome_produto', 'produto_nome', 'descricao', 'description', 'descricao_produto'},
	'modelo': {'modelo', 'model'},
	'cor': {'cor', 'color', 'colour'},
	'tamanho': {'tamanho', 'size'},
	'quantidade': {'quantidade', 'quantity', 'qtd', 'estoque', 'saldo', 'quantidade_atual', 'qtd_estoque'},
	'unidade': {'unidade', 'unit', 'unidade_medida'},
	'tecido_composicao': {'tecido_composicao', 'tecido', 'composicao', 'composition'},
	'item': {'item'},
	'medida': {'medida', 'measure', 'dimensao', 'dimensoes', 'dimensions'},
	'observacoes': {'observacao', 'observacoes', 'observation', 'observations', 'notes'},
}

PRODUCT_FIELDS = tuple(FIELD_ALIASES)
IDENTITY_FIELDS = ('fonte', 'secao', 'produto', 'modelo', 'cor', 'tamanho')


def load_database_url() -> str:
	values: dict[str, str] = {}
	env_path = ROOT / '.env'
	if env_path.exists():
		for line in env_path.read_text(encoding='utf-8').splitlines():
			if '=' in line and not line.lstrip().startswith('#'):
				key, value = line.split('=', 1)
				values[key.strip()] = value.strip()

	database_url = os.getenv('DATABASE_URL') or values.get('DATABASE_URL')
	if not database_url:
		raise RuntimeError('DATABASE_URL não foi encontrada.')
	return database_url


def normalize_header(value: object) -> str:
	text = unicodedata.normalize('NFKD', str(value).strip().lower())
	text = ''.join(character for character in text if not unicodedata.combining(character))
	return re.sub(r'[^a-z0-9]+', '_', text).strip('_')


def normalize_text(value: object) -> str | None:
	if pd.isna(value):
		return None
	text = str(value).strip()
	return text or None


def parse_quantity(value: object, row_number: int) -> int | None:
	text = normalize_text(value)
	if text is None:
		return None

	try:
		quantity = Decimal(text.replace(',', '.'))
	except InvalidOperation as error:
		raise ValueError(f'Quantidade inválida na linha {row_number}: {text!r}.') from error

	if not quantity.is_finite() or quantity != quantity.to_integral_value() or quantity < 0:
		raise ValueError(f'A quantidade na linha {row_number} deve ser um inteiro não negativo.')
	return int(quantity)


def read_products(excel_path: Path = DEFAULT_EXCEL_PATH) -> list[Product]:
	if not excel_path.is_file():
		raise FileNotFoundError(f'Planilha não encontrada: {excel_path}')

	raw = pd.read_excel(excel_path, header=0)
	column_by_field: dict[str, object] = {}
	for column in raw.columns:
		header = normalize_header(column)
		for field, aliases in FIELD_ALIASES.items():
			if header in aliases:
				if field in column_by_field:
					raise ValueError(f'A planilha contém mais de uma coluna para o campo {field!r}.')
				column_by_field[field] = column
				break

	if 'produto' not in column_by_field:
		raise ValueError('A planilha precisa ter uma coluna “produto” (ou “nome”/“descrição”).')

	products: list[Product] = []
	for row_index, row in raw.iterrows():
		if all(pd.isna(value) for value in row.tolist()):
			continue

		row_number = int(row_index) + 2
		product_name = normalize_text(row[column_by_field['produto']])
		if product_name is None:
			raise ValueError(f'Produto não informado na linha {row_number}.')

		product: Product = {
			'fonte': (normalize_text(row[column_by_field['fonte']]) if 'fonte' in column_by_field else None) or 'VARIADOS',
			'secao': None,
			'produto': product_name,
			'modelo': None,
			'cor': None,
			'tamanho': None,
			'quantidade': None,
			'unidade': 'un',
			'tecido_composicao': None,
			'item': None,
			'medida': None,
			'observacoes': None,
		}
		for field in PRODUCT_FIELDS:
			if field not in column_by_field or field in {'produto', 'fonte', 'quantidade', 'unidade'}:
				continue
			product[field] = normalize_text(row[column_by_field[field]])

		if 'unidade' in column_by_field:
			product['unidade'] = normalize_text(row[column_by_field['unidade']]) or 'un'
		if 'quantidade' in column_by_field:
			product['quantidade'] = parse_quantity(row[column_by_field['quantidade']], row_number)

		products.append(product)

	if not products:
		raise ValueError('A planilha não contém produtos para importar.')

	return products


def main() -> None:
	parser = argparse.ArgumentParser(description='Importa produtos de uma planilha para a tabela estoque.')
	parser.add_argument('arquivo', nargs='?', type=Path, default=DEFAULT_EXCEL_PATH, help='Caminho da planilha .xlsx')
	args = parser.parse_args()
	products = read_products(args.arquivo)
	connection = psycopg2.connect(load_database_url())

	try:
		with connection:
			with connection.cursor() as cursor:
				for product in products:
					identity_conditions = ' AND '.join(f'{field} IS NOT DISTINCT FROM %s' for field in IDENTITY_FIELDS)
					identity_values = tuple(product[field] for field in IDENTITY_FIELDS)
					cursor.execute(
						f'SELECT id FROM estoque WHERE {identity_conditions} ORDER BY id LIMIT 1 FOR UPDATE',
						identity_values,
					)
					existing = cursor.fetchone()
					values = tuple(product[field] for field in PRODUCT_FIELDS)
					if existing:
						cursor.execute(
							'SELECT 1 FROM stock_movements WHERE product_id = %s LIMIT 1',
							(existing[0],),
						)
						if cursor.fetchone():
							raise RuntimeError(
								f'O produto {product["produto"]!r} já possui movimentações; '
								'para não divergir o histórico, a importação foi cancelada.'
							)
						set_clause = ', '.join(f'{field} = %s' for field in PRODUCT_FIELDS)
						cursor.execute(
							f'UPDATE estoque SET {set_clause}, updated_at = NOW() WHERE id = %s',
							(*values, existing[0]),
						)
					else:
						columns = ', '.join(PRODUCT_FIELDS)
						placeholders = ', '.join(['%s'] * len(PRODUCT_FIELDS))
						cursor.execute(
							f'INSERT INTO estoque ({columns}) VALUES ({placeholders})',
							values,
						)
		print(f'✅ {len(products)} produtos foram importados para a tabela estoque.')
	finally:
		connection.close()


if __name__ == '__main__':
	main()

