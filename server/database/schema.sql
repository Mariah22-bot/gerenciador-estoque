-- Este esquema é aditivo: a inicialização não apaga tabelas nem dados.

CREATE TABLE IF NOT EXISTS estoque (
  id SERIAL PRIMARY KEY,
  fonte VARCHAR(100) NOT NULL DEFAULT 'VARIADOS',
  secao VARCHAR(150),
  produto TEXT,
  modelo TEXT,
  cor TEXT,
  tamanho TEXT,
  quantidade INTEGER DEFAULT 0 CHECK (quantidade >= 0),
  sku VARCHAR(80),
  unit_price NUMERIC(12, 2) NOT NULL DEFAULT 0 CHECK (unit_price >= 0),
  minimum_quantity INTEGER NOT NULL DEFAULT 0 CHECK (minimum_quantity >= 0),
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
ALTER TABLE estoque ADD COLUMN IF NOT EXISTS sku VARCHAR(80);
ALTER TABLE estoque ADD COLUMN IF NOT EXISTS unit_price NUMERIC(12, 2) NOT NULL DEFAULT 0 CHECK (unit_price >= 0);
ALTER TABLE estoque ADD COLUMN IF NOT EXISTS minimum_quantity INTEGER NOT NULL DEFAULT 0 CHECK (minimum_quantity >= 0);

-- Migra a estrutura anterior preservando IDs, SKUs, preços, mínimos e movimentos.
-- A tabela antiga é renomeada para manter uma cópia integral dos dados originais.
DO $$
DECLARE
  legacy_products REGCLASS := to_regclass('public.products');
  legacy_movements REGCLASS := to_regclass('public.stock_movements');
  foreign_key RECORD;
BEGIN
  IF legacy_products IS NULL THEN
    RETURN;
  END IF;

  IF to_regclass('public.products_legacy_archive') IS NOT NULL THEN
    RAISE EXCEPTION 'A tabela products_legacy_archive já existe; migração cancelada para evitar sobrescrever o arquivo legado.';
  END IF;

  IF EXISTS (SELECT 1 FROM public.estoque) THEN
    RAISE EXCEPTION 'As tabelas products e estoque contêm dados. Faça uma mesclagem manual antes de inicializar; nenhum dado foi alterado.';
  END IF;

  IF (
    SELECT COUNT(*)
    FROM information_schema.columns
    WHERE table_schema = 'public'
      AND table_name = 'products'
      AND column_name IN ('id', 'sku', 'name', 'category', 'quantity', 'unit_price', 'minimum_quantity', 'created_at', 'updated_at')
  ) <> 9 THEN
    RAISE EXCEPTION 'A tabela products não corresponde ao esquema legado conhecido; migração cancelada sem alterar os dados.';
  END IF;

  IF EXISTS (SELECT 1 FROM public.products WHERE id > 2147483647) THEN
    RAISE EXCEPTION 'Há IDs de products maiores que o limite atual de estoque.id; migração cancelada sem alterar os dados.';
  END IF;

  INSERT INTO public.estoque (
    id, fonte, secao, produto, quantidade, sku, unit_price,
    minimum_quantity, unidade, created_at, updated_at
  )
  SELECT id, 'VARIADOS', category, name, quantity, sku, unit_price,
         minimum_quantity, 'un', created_at, updated_at
  FROM public.products
  ORDER BY id;

  IF legacy_movements IS NOT NULL THEN
    FOR foreign_key IN
      SELECT conname
      FROM pg_constraint
      WHERE conrelid = legacy_movements
        AND confrelid = legacy_products
        AND contype = 'f'
    LOOP
      EXECUTE format('ALTER TABLE public.stock_movements DROP CONSTRAINT %I', foreign_key.conname);
    END LOOP;

    IF EXISTS (
      SELECT 1
      FROM public.stock_movements AS movement
      LEFT JOIN public.estoque AS product ON product.id = movement.product_id
      WHERE product.id IS NULL
    ) THEN
      RAISE EXCEPTION 'Há movimentações sem produto correspondente; migração cancelada sem alterar os dados.';
    END IF;

    IF EXISTS (
      SELECT 1 FROM public.stock_movements
      WHERE product_id > 2147483647 OR product_id < -2147483648
    ) THEN
      RAISE EXCEPTION 'Há IDs de movimentação fora do limite do novo estoque.id; migração cancelada sem alterar os dados.';
    END IF;

    ALTER TABLE public.stock_movements
      ALTER COLUMN product_id TYPE INTEGER USING product_id::INTEGER;

    IF NOT EXISTS (
      SELECT 1
      FROM pg_constraint
      WHERE conrelid = legacy_movements
        AND confrelid = 'public.estoque'::REGCLASS
        AND contype = 'f'
    ) THEN
      ALTER TABLE public.stock_movements
        ADD CONSTRAINT stock_movements_product_id_fkey
        FOREIGN KEY (product_id) REFERENCES public.estoque(id) ON DELETE RESTRICT;
    END IF;
  END IF;

  ALTER TABLE public.products RENAME TO products_legacy_archive;
END $$;

CREATE UNIQUE INDEX IF NOT EXISTS idx_estoque_sku_unique
  ON estoque(sku) WHERE sku IS NOT NULL;

DO $$
DECLARE
  id_sequence REGCLASS := pg_get_serial_sequence('public.estoque', 'id');
  highest_id BIGINT;
BEGIN
  IF id_sequence IS NULL THEN
    CREATE SEQUENCE IF NOT EXISTS public.estoque_id_seq;
    ALTER SEQUENCE public.estoque_id_seq OWNED BY public.estoque.id;
    ALTER TABLE public.estoque ALTER COLUMN id SET DEFAULT nextval('public.estoque_id_seq');
    id_sequence := 'public.estoque_id_seq'::REGCLASS;
  END IF;

  SELECT COALESCE(MAX(id), 0) INTO highest_id FROM public.estoque;
  PERFORM setval(id_sequence, GREATEST(highest_id, 1), highest_id > 0);
END $$;

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