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
	'produto': {'produto', 'product', 'nome', 'name', 'nome_produto', 'produto_nome', 'tipo_de_produto', 'descricao', 'description', 'descricao_produto'},
	'modelo': {'modelo', 'model'},
	'cor': {'cor', 'color', 'colour', 'cor_variacao', 'color_variation'},
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
VARIANT_FIELDS = ('produto', 'modelo', 'cor', 'tamanho')


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
	text = re.sub(r'\s+', ' ', str(value)).strip()
	return text or None


def parse_quantity_details(value: object, row_number: int) -> tuple[int | None, str | None, str | None]:
	text = normalize_text(value)
	if text is None:
		return None, None, None
	if text in {'-', '--', '–', '—'}:
		return 0, None, None

	match = re.fullmatch(r'(\d+(?:[.,]\d+)?)(?:\s+(.+))?', text)
	if not match:
		raise ValueError(f'Quantidade inválida na linha {row_number}: {text!r}.')

	try:
		quantity = Decimal(match.group(1).replace(',', '.'))
	except InvalidOperation as error:
		raise ValueError(f'Quantidade inválida na linha {row_number}: {text!r}.') from error

	if not quantity.is_finite() or quantity != quantity.to_integral_value() or quantity < 0:
		raise ValueError(f'A quantidade na linha {row_number} deve ser um inteiro não negativo.')

	unit = None
	notes = None
	suffix = match.group(2)
	if suffix:
		unit_match = re.fullmatch(r'(kits?|un(?:d|idades?)?)(?:\s*/\s*(.+))?', suffix, re.IGNORECASE)
		if not unit_match:
			raise ValueError(f'Unidade não reconhecida na linha {row_number}: {suffix!r}.')
		unit = 'kit' if unit_match.group(1).lower().startswith('kit') else 'un'
		notes = normalize_text(unit_match.group(2))

	return int(quantity), unit, notes


def parse_quantity(value: object, row_number: int) -> int | None:
	return parse_quantity_details(value, row_number)[0]


def read_products(excel_path: Path = DEFAULT_EXCEL_PATH) -> list[Product]:
	if not excel_path.is_file():
		raise FileNotFoundError(f'Planilha não encontrada: {excel_path}')

	raw = pd.read_excel(excel_path, header=None)
	rows = [[normalize_text(value) for value in row] for row in raw.itertuples(index=False, name=None)]
	header_columns: dict[int, dict[str, int]] = {}
	matrix_headers: dict[int, dict[str, object]] = {}
	for row_index, values in enumerate(rows):
		headers = [normalize_header(value) if value is not None else '' for value in values]
		columns: dict[str, int] = {}
		for column_index, header in enumerate(headers):
			for field, aliases in FIELD_ALIASES.items():
				if header in aliases and field not in columns:
					columns[field] = column_index
					break

		if len(columns) <= 1 and headers[0] in FIELD_ALIASES['cor'] and any(values[1:]):
			matrix_headers[row_index] = {
				'mode': 'color_by_variant',
				'variants': {index: value for index, value in enumerate(values[1:], start=1) if value is not None},
			}
		elif len(columns) <= 1 and len(values) > 1 and headers[1] in FIELD_ALIASES['cor'] and values[0] and any(values[2:]):
			matrix_headers[row_index] = {
				'mode': 'size_by_color',
				'product': values[0],
				'variants': {index: value for index, value in enumerate(values[2:], start=2) if value is not None},
			}
		if row_index in matrix_headers:
			continue

		if len(columns) >= 2 and {'produto', 'modelo', 'tamanho'} & columns.keys():
			header_columns[row_index] = columns

	products: list[Product] = []
	section: str | None = None
	field_columns: dict[str, int] = {}
	matrix: dict[str, object] | None = None
	last_product: str | None = None
	last_model: str | None = None

	def append_product(
		product_name: str,
		*,
		model: str | None = None,
		color: str | None = None,
		size: str | None = None,
		quantity: int | None = None,
		unit: str | None = None,
		tissue: str | None = None,
		measure: str | None = None,
		notes: str | None = None,
	) -> None:
		products.append({
			'fonte': 'VARIADOS',
			'secao': section,
			'produto': product_name,
			'modelo': model,
			'cor': color,
			'tamanho': size,
			'quantidade': quantity,
			'unidade': unit or 'un',
			'tecido_composicao': tissue,
			'item': None,
			'medida': measure,
			'observacoes': notes,
		})

	for row_index, values in enumerate(rows):
		if not any(values):
			continue

		first_value = values[0] or ''
		section_match = re.match(r'^\s*\d+\.\s*(.+)$', first_value)
		if all(value is None for value in values[1:]):
			next_nonempty = row_index + 1
			while next_nonempty < len(rows) and not any(rows[next_nonempty]):
				next_nonempty += 1
			if section_match or next_nonempty in header_columns or next_nonempty in matrix_headers:
				section = section_match.group(1).strip() if section_match else first_value
				field_columns = {}
				matrix = None
				last_product = None
				last_model = None
				continue

		if row_index in matrix_headers:
			matrix = matrix_headers[row_index]
			field_columns = {}
			last_product = None
			last_model = None
			continue

		if row_index in header_columns:
			field_columns = header_columns[row_index]
			matrix = None
			last_product = None
			last_model = None
			continue

		if matrix is not None:
			mode = matrix['mode']
			variants = matrix['variants']
			if mode == 'color_by_variant':
				color = values[0]
				product_name = section
				variant_start = 1
			else:
				color = values[1] if len(values) > 1 else None
				product_name = matrix['product']
				variant_start = 2
			if not color or not isinstance(product_name, str):
				continue

			for column_index, variant_value in variants.items():
				if column_index < variant_start or column_index >= len(values):
					continue
				quantity_value = values[column_index]
				if quantity_value is None:
					continue
				quantity, inferred_unit, notes = parse_quantity_details(quantity_value, row_index + 1)
				variant = str(variant_value)
				is_kit_or_size = normalize_header(variant).startswith('kit') or normalize_header(variant) in {
					'king', 'queen', 'casal', 'solteiro', 'solteiro_3g',
				}
				append_product(
					product_name,
					model=None if is_kit_or_size else variant,
					color=color,
					size=variant if is_kit_or_size or mode == 'size_by_color' else None,
					quantity=quantity,
					unit=inferred_unit or ('kit' if normalize_header(variant).startswith('kit') else None),
					notes=notes,
				)
			continue

		if not field_columns:
			continue

		row_number = row_index + 1
		product_value = values[field_columns['produto']] if 'produto' in field_columns else None
		model_value = values[field_columns['modelo']] if 'modelo' in field_columns else None
		if 'produto' not in field_columns and 'modelo' in field_columns:
			if model_value is not None:
				last_product = model_value
			product_value = model_value or last_product or section
			model_value = None
		elif product_value is not None:
			if product_value != last_product:
				last_model = None
			last_product = product_value
		elif 'produto' in field_columns:
			product_value = last_product
		else:
			product_value = section

		if model_value is not None:
			last_model = model_value
		else:
			model_value = last_model

		if product_value is None:
			continue

		attributes: dict[str, str | None] = {}
		for field, column_index in field_columns.items():
			if field in {'produto', 'modelo', 'fonte', 'unidade', 'quantidade'}:
				continue
			attributes[field] = values[column_index]
		quantity = None
		inferred_unit = None
		notes = attributes.get('observacoes')
		if 'quantidade' in field_columns:
			quantity, inferred_unit, quantity_notes = parse_quantity_details(values[field_columns['quantidade']], row_number)
			notes = notes or quantity_notes
		unit_value = values[field_columns['unidade']] if 'unidade' in field_columns else None
		append_product(
			product_value,
			model=model_value,
			color=attributes.get('cor'),
			size=attributes.get('tamanho'),
			quantity=quantity,
			unit=unit_value or inferred_unit,
			tissue=attributes.get('tecido_composicao'),
			measure=attributes.get('medida'),
			notes=notes,
		)

	if not products:
		raise ValueError('A planilha não contém produtos para importar.')

	return products


def main() -> None:
	parser = argparse.ArgumentParser(description='Importa produtos de uma planilha para a tabela estoque.')
	parser.add_argument('arquivo', nargs='?', type=Path, default=DEFAULT_EXCEL_PATH, help='Caminho da planilha .xlsx')
	args = parser.parse_args()
	products = read_products(args.arquivo)
	connection = psycopg2.connect(load_database_url())
	inserted_count = 0
	updated_count = 0

	try:
		with connection:
			with connection.cursor() as cursor:
				cursor.execute('SELECT id, fonte, secao, produto, modelo, cor, tamanho FROM estoque FOR UPDATE')
				exact_index: dict[tuple[object, ...], list[int]] = {}
				variant_index: dict[tuple[str, ...], list[int]] = {}
				for row in cursor.fetchall():
					product_id, *identity_values = row
					exact_key = tuple(identity_values)
					variant_key = tuple(normalize_header(value or '') for value in identity_values[2:])
					exact_index.setdefault(exact_key, []).append(product_id)
					variant_index.setdefault(variant_key, []).append(product_id)

				for product in products:
					identity_values = tuple(product[field] for field in IDENTITY_FIELDS)
					exact_key = identity_values
					variant_key = tuple(normalize_header(product[field] or '') for field in VARIANT_FIELDS)
					matches = exact_index.get(exact_key, [])
					if not matches:
						matches = variant_index.get(variant_key, [])
					if len(matches) > 1:
						raise RuntimeError(
							f'Não foi possível identificar unicamente {product["produto"]!r} '
							'por produto, modelo, cor e tamanho; a importação foi cancelada.'
						)
					existing_id = matches[0] if matches else None
					values = tuple(product[field] for field in PRODUCT_FIELDS)
					if existing_id is not None:
						cursor.execute(
							'SELECT 1 FROM stock_movements WHERE product_id = %s LIMIT 1',
							(existing_id,),
						)
						if cursor.fetchone():
							raise RuntimeError(
								f'O produto {product["produto"]!r} já possui movimentações; '
								'para não divergir o histórico, a importação foi cancelada.'
							)
						set_clause = ', '.join(f'{field} = %s' for field in PRODUCT_FIELDS)
						cursor.execute(
							f'UPDATE estoque SET {set_clause}, updated_at = NOW() WHERE id = %s',
							(*values, existing_id),
						)
						updated_count += 1
					else:
						columns = ', '.join(PRODUCT_FIELDS)
						placeholders = ', '.join(['%s'] * len(PRODUCT_FIELDS))
						cursor.execute(
							f'INSERT INTO estoque ({columns}) VALUES ({placeholders}) RETURNING id',
							values,
						)
						existing_id = cursor.fetchone()[0]
						inserted_count += 1

					if existing_id not in exact_index.get(exact_key, []):
						exact_index.setdefault(exact_key, []).append(existing_id)
					if existing_id not in variant_index.get(variant_key, []):
						variant_index.setdefault(variant_key, []).append(existing_id)
		print(
			f'Importacao concluida: {len(products)} linhas processadas '
			f'({inserted_count} novos, {updated_count} atualizados) em estoque.'
		)
	finally:
		connection.close()


if __name__ == '__main__':
	main()

