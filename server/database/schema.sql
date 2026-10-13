-- Este esquema é aditivo: não apague tabelas nem dados durante a inicialização.
-- A estrutura antiga precisa de migração explícita antes de usar o esquema atual.
DO $$
BEGIN
  IF to_regclass('public.products') IS NOT NULL THEN
    RAISE EXCEPTION
      'Foi encontrada a tabela legada "products". Nenhum dado foi alterado; faça backup e migre os dados para "estoque" antes de inicializar.';
  END IF;
END $$;

CREATE TABLE IF NOT EXISTS estoque (
  id SERIAL PRIMARY KEY,
  fonte VARCHAR(100) NOT NULL DEFAULT 'VARIADOS',
  secao VARCHAR(150),
  produto TEXT,
  modelo TEXT,
  cor TEXT,
  tamanho TEXT,
  quantidade INTEGER DEFAULT 0 CHECK (quantidade >= 0),
  unidade VARCHAR(10) NOT NULL DEFAULT 'un',
  tecido_composicao TEXT,
  item TEXT,
  medida TEXT,
  observacoes TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

ALTER TABLE estoque ALTER COLUMN quantidade DROP NOT NULL;
ALTER TABLE estoque ALTER COLUMN produto DROP NOT NULL;

CREATE TABLE IF NOT EXISTS stock_movements (
  id BIGSERIAL PRIMARY KEY,
  product_id INTEGER NOT NULL REFERENCES estoque(id) ON DELETE RESTRICT,
  type VARCHAR(10) NOT NULL CHECK (type IN ('entrada', 'saida')),
  quantity INTEGER NOT NULL CHECK (quantity > 0),
  occurred_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  notes VARCHAR(500)
);

CREATE INDEX IF NOT EXISTS idx_estoque_produto ON estoque(produto);
CREATE INDEX IF NOT EXISTS idx_estoque_secao ON estoque(secao);
CREATE INDEX IF NOT EXISTS idx_stock_movements_occurred_at ON stock_movements(occurred_at DESC);
CREATE INDEX IF NOT EXISTS idx_stock_movements_product_id ON stock_movements(product_id);