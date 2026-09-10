import os
from pathlib import Path
from urllib.parse import unquote, urlparse

import pandas as pd
import psycopg2

ROOT = Path(__file__).parent


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


def read_products() -> list[tuple[str, str, int]]:
	raw = pd.read_excel(ROOT / 'produtos-estoque.xlsx', header=None)
	products: list[tuple[str, str, int]] = []

	for index, row in raw.iloc[1:].iterrows():
		values = [str(value).strip() for value in row.tolist() if pd.notna(value) and str(value).strip()]
		if not values:
			continue
		try:
			quantity = int(float(row.iloc[4])) if len(row) > 4 and pd.notna(row.iloc[4]) else 0
		except (TypeError, ValueError):
			continue
		products.append((f'IMP-{index:04d}', ' - '.join(values[:4])[:160], max(quantity, 0)))

	return products


def main() -> None:
	parsed = urlparse(load_database_url())
	connection = psycopg2.connect(
		host=parsed.hostname,
		port=parsed.port or 5432,
		dbname=parsed.path.removeprefix('/'),
		user=parsed.username,
		password=unquote(parsed.password or ''),
	)

	try:
		products = read_products()
		with connection:
			with connection.cursor() as cursor:
				for sku, name, quantity in products:
					cursor.execute(
						"""
						INSERT INTO products (sku, name, quantity)
						VALUES (%s, %s, %s)
						ON CONFLICT (sku) DO UPDATE SET name = EXCLUDED.name,
						  quantity = EXCLUDED.quantity, updated_at = NOW()
						""",
						(sku, name, quantity),
					)
		print(f'✅ {len(products)} produtos foram importados para a tabela products.')
	finally:
		connection.close()


if __name__ == '__main__':
	main()