CREATE TABLE IF NOT EXISTS products (
  id BIGSERIAL PRIMARY KEY,
  sku VARCHAR(80) NOT NULL UNIQUE,
  name VARCHAR(160) NOT NULL,
  category VARCHAR(100),
  quantity INTEGER NOT NULL DEFAULT 0 CHECK (quantity >= 0),
  unit_price NUMERIC(12, 2) NOT NULL DEFAULT 0 CHECK (unit_price >= 0),
  minimum_quantity INTEGER NOT NULL DEFAULT 0 CHECK (minimum_quantity >= 0),
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS stock_movements (
  id BIGSERIAL PRIMARY KEY,
  product_id BIGINT NOT NULL REFERENCES products(id) ON DELETE RESTRICT,
  type VARCHAR(10) NOT NULL CHECK (type IN ('entrada', 'saida')),
  quantity INTEGER NOT NULL CHECK (quantity > 0),
  occurred_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  notes VARCHAR(500)
);

CREATE INDEX IF NOT EXISTS idx_products_name ON products(name);
CREATE INDEX IF NOT EXISTS idx_stock_movements_occurred_at ON stock_movements(occurred_at DESC);
CREATE INDEX IF NOT EXISTS idx_stock_movements_product_id ON stock_movements(product_id);