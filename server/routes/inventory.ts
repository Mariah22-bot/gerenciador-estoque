import { Router } from 'express';
import { pool } from '../db.js';

export const inventoryRouter = Router();

inventoryRouter.get('/analytics', async (_request, response) => {
  try {
    const topProducts = await pool.query(`
      SELECT e.produto AS name,
             COALESCE(e.sku, CASE WHEN e.id < 100 THEN LPAD(e.id::TEXT, 3, '0') ELSE e.id::TEXT END) AS sku,
             COALESCE(SUM(movements.quantity) FILTER (WHERE movements.type = 'saida'), 0)::int AS units_moved
      FROM estoque AS e
      LEFT JOIN stock_movements AS movements
        ON movements.product_id = e.id AND movements.occurred_at >= NOW() - INTERVAL '30 days'
      GROUP BY e.id
      ORDER BY units_moved DESC, e.produto ASC
      LIMIT 10
    `);

    const abc = await pool.query(`
      WITH product_values AS (
        SELECT e.id,
               COALESCE(SUM(movements.quantity * e.unit_price) FILTER (WHERE movements.type = 'saida'), 0) AS total_value
        FROM estoque AS e
        LEFT JOIN stock_movements AS movements ON movements.product_id = e.id
        GROUP BY e.id
      ), ranked AS (
        SELECT total_value, SUM(total_value) OVER () AS grand_total,
               SUM(total_value) OVER (ORDER BY total_value DESC ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS accumulated
        FROM product_values
      )
      SELECT CASE
        WHEN grand_total = 0 THEN 'C'
        WHEN accumulated / grand_total <= 0.8 THEN 'A'
        WHEN accumulated / grand_total <= 0.95 THEN 'B'
        ELSE 'C'
      END AS classification, COUNT(*)::int AS products
      FROM ranked
      GROUP BY classification
      ORDER BY classification
    `);

    const turnover = await pool.query(`
      WITH months AS (
        SELECT generate_series(
          DATE_TRUNC('month', NOW()) - INTERVAL '5 months',
          DATE_TRUNC('month', NOW()),
          INTERVAL '1 month'
        ) AS month
      ), monthly_movements AS (
        SELECT DATE_TRUNC('month', occurred_at) AS month,
               COALESCE(SUM(quantity) FILTER (WHERE type = 'saida'), 0)::int AS exits,
               COALESCE(SUM(quantity) FILTER (WHERE type = 'entrada'), 0)::int AS entries
        FROM stock_movements
        WHERE occurred_at >= DATE_TRUNC('month', NOW()) - INTERVAL '5 months'
        GROUP BY DATE_TRUNC('month', occurred_at)
      )
      SELECT TO_CHAR(months.month, 'Mon') AS month,
             COALESCE(monthly_movements.exits, 0)::int AS exits,
             COALESCE(monthly_movements.entries, 0)::int AS entries
      FROM months
      LEFT JOIN monthly_movements ON monthly_movements.month = months.month
      ORDER BY months.month
    `);

    const turnoverByCategory = await pool.query(`
      WITH months AS (
        SELECT generate_series(
          DATE_TRUNC('month', NOW()) - INTERVAL '5 months',
          DATE_TRUNC('month', NOW()),
          INTERVAL '1 month'
        ) AS month
      ), categories AS (
        SELECT DISTINCT COALESCE(e.secao, e.codigo, 'Sem categoria') AS category
        FROM estoque AS e
      ), monthly_movements AS (
        SELECT COALESCE(e.secao, e.codigo, 'Sem categoria') AS category,
               DATE_TRUNC('month', movements.occurred_at) AS month,
               COALESCE(SUM(movements.quantity) FILTER (WHERE movements.type = 'saida'), 0)::int AS exits,
               COALESCE(SUM(movements.quantity) FILTER (WHERE movements.type = 'entrada'), 0)::int AS entries
        FROM stock_movements AS movements
        JOIN estoque AS e ON e.id = movements.product_id
        WHERE movements.occurred_at >= DATE_TRUNC('month', NOW()) - INTERVAL '5 months'
        GROUP BY COALESCE(e.secao, e.codigo, 'Sem categoria'),
                 DATE_TRUNC('month', movements.occurred_at)
      )
      SELECT categories.category,
             TO_CHAR(months.month, 'Mon') AS month,
             COALESCE(monthly_movements.exits, 0)::int AS exits,
             COALESCE(monthly_movements.entries, 0)::int AS entries
      FROM categories
      CROSS JOIN months
      LEFT JOIN monthly_movements
        ON monthly_movements.category = categories.category
        AND monthly_movements.month = months.month
      ORDER BY categories.category, months.month
    `);

    response.json({
      topProducts: topProducts.rows,
      abc: abc.rows,
      turnover: turnover.rows,
      turnoverByCategory: turnoverByCategory.rows,
    });
  } catch {
    response.status(500).json({ error: 'Não foi possível calcular as análises do estoque.' });
  }
});

inventoryRouter.get('/dashboard/summary', async (_request, response) => {
  try {
    const result = await pool.query(`
      SELECT
        COUNT(*)::int AS product_count,
        COUNT(*) FILTER (
          WHERE NOT EXISTS (
            SELECT 1
            FROM stock_movements
            WHERE stock_movements.product_id = estoque.id
              AND stock_movements.type = 'saida'
          )
        )::int AS products_without_turnover_count,
        COALESCE(SUM(COALESCE(quantidade, 0) * unit_price), 0)::numeric AS invested_capital,
        COALESCE((SELECT SUM(quantity) FROM stock_movements WHERE type = 'entrada'), 0)::int AS entries,
        COALESCE((SELECT SUM(quantity) FROM stock_movements WHERE type = 'saida'), 0)::int AS exits
      FROM estoque
    `);

    response.json(result.rows[0]);
  } catch {
    response.status(500).json({ error: 'Não foi possível consultar o resumo do dashboard.' });
  }
});

inventoryRouter.get('/products', async (_request, response) => {
  try {
    const result = await pool.query(`
      SELECT e.id,
             COALESCE(e.sku, CASE WHEN e.id < 100 THEN LPAD(e.id::TEXT, 3, '0') ELSE e.id::TEXT END) AS sku,
             COALESCE(e.produto, 'Sem descrição') AS name,
             COALESCE(e.secao, e.codigo) AS category,
             COALESCE(e.quantidade, 0) AS quantity,
             e.unit_price,
             e.minimum_quantity,
             e.codigo, e.secao, COALESCE(e.produto, 'Sem descrição') AS produto, e.modelo, e.cor, e.tamanho,
             e.unidade, e.tecido_composicao, e.item, e.medida, e.observacoes,
             e.created_at,
             e.updated_at
      FROM estoque AS e
      ORDER BY e.produto ASC
    `);

    response.json(result.rows);
  } catch {
    response.status(500).json({ error: 'Não foi possível consultar os produtos.' });
  }
});

inventoryRouter.get('/movements', async (_request, response) => {
  try {
    const result = await pool.query(`
      SELECT movements.id, movements.type, movements.quantity,
             movements.occurred_at, movements.notes,
             COALESCE(e.sku, CASE WHEN e.id < 100 THEN LPAD(e.id::TEXT, 3, '0') ELSE e.id::TEXT END) AS sku,
             e.produto AS product_name
      FROM stock_movements AS movements
      INNER JOIN estoque AS e ON e.id = movements.product_id
      ORDER BY movements.occurred_at DESC
    `);

    response.json(result.rows);
  } catch {
    response.status(500).json({ error: 'Não foi possível consultar as movimentações.' });
  }
});

inventoryRouter.post('/products', async (request, response) => {
  const { codigo = 'VARIADOS', secao, produto, modelo, cor, tamanho, quantity = 0, unitPrice = 0, unidade = 'un', tecidoComposicao, item, medida, observacoes } = request.body as {
    codigo?: string;
    secao?: string;
    produto?: string;
    modelo?: string;
    cor?: string;
    tamanho?: string;
    quantity?: number;
    unitPrice?: number;
    unidade?: string;
    tecidoComposicao?: string;
    item?: string;
    medida?: string;
    observacoes?: string;
  };

  if (!produto?.trim()) {
    response.status(400).json({ error: 'Produto é obrigatório.' });
    return;
  }

  if (!Number.isFinite(unitPrice) || unitPrice < 0) {
    response.status(400).json({ error: 'O preço deve ser um número não negativo.' });
    return;
  }

  try {
    const result = await pool.query(`
      INSERT INTO estoque (codigo, secao, produto, quantidade, unit_price, unidade, modelo, cor, tamanho, tecido_composicao, item, medida, observacoes)
      VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13)
      RETURNING id,
                COALESCE(sku, CASE WHEN id < 100 THEN LPAD(id::TEXT, 3, '0') ELSE id::TEXT END) AS sku,
                COALESCE(produto, 'Sem descrição') AS name,
                COALESCE(secao, codigo) AS category,
                COALESCE(quantidade, 0) AS quantity,
                unit_price,
                minimum_quantity,
                codigo, secao, COALESCE(produto, 'Sem descrição') AS produto, modelo, cor, tamanho, unidade, tecido_composicao, item, medida, observacoes
    `, [codigo.trim() || 'VARIADOS', secao?.trim() ?? null, produto.trim(), quantity, unitPrice, unidade.trim(), modelo?.trim() ?? null, cor?.trim() ?? null, tamanho?.trim() ?? null, tecidoComposicao?.trim() ?? null, item?.trim() ?? null, medida?.trim() ?? null, observacoes?.trim() ?? null]);

    response.status(201).json(result.rows[0]);
  } catch {
    response.status(500).json({ error: 'Não foi possível cadastrar o produto.' });
  }
});

inventoryRouter.put('/products/:id', async (request, response) => {
  const productId = Number(request.params.id);
  const { codigo = 'VARIADOS', secao, produto, modelo, cor, tamanho, quantity = 0, unitPrice = 0, unidade = 'un', tecidoComposicao, item, medida, observacoes } = request.body as {
    codigo?: string;
    secao?: string;
    produto?: string;
    modelo?: string;
    cor?: string;
    tamanho?: string;
    quantity?: number;
    unitPrice?: number;
    unidade?: string;
    tecidoComposicao?: string;
    item?: string;
    medida?: string;
    observacoes?: string;
  };

  if (!Number.isInteger(productId) || productId <= 0) {
    response.status(400).json({ error: 'Identificador do produto inválido.' });
    return;
  }

  if (!produto?.trim()) {
    response.status(400).json({ error: 'Produto é obrigatório.' });
    return;
  }

  if (!Number.isFinite(unitPrice) || unitPrice < 0) {
    response.status(400).json({ error: 'O preço deve ser um número não negativo.' });
    return;
  }

  try {
    const result = await pool.query(`
      UPDATE estoque
        SET codigo = $1, secao = $2, produto = $3, modelo = $4, cor = $5,
          tamanho = $6, quantidade = $7, unit_price = $8, unidade = $9, tecido_composicao = $10,
          item = $11, medida = $12, observacoes = $13, updated_at = NOW()
        WHERE id = $14
      RETURNING id,
                COALESCE(sku, CASE WHEN id < 100 THEN LPAD(id::TEXT, 3, '0') ELSE id::TEXT END) AS sku,
                COALESCE(produto, 'Sem descrição') AS name,
                COALESCE(secao, codigo) AS category,
                COALESCE(quantidade, 0) AS quantity,
                unit_price,
                minimum_quantity,
                codigo, secao, COALESCE(produto, 'Sem descrição') AS produto, modelo, cor, tamanho, unidade, tecido_composicao, item, medida, observacoes
    `, [codigo.trim() || 'VARIADOS', secao?.trim() ?? null, produto.trim(), modelo?.trim() ?? null, cor?.trim() ?? null, tamanho?.trim() ?? null, quantity, unitPrice, unidade.trim(), tecidoComposicao?.trim() ?? null, item?.trim() ?? null, medida?.trim() ?? null, observacoes?.trim() ?? null, productId]);

    if (result.rowCount === 0) {
      response.status(404).json({ error: 'Produto não encontrado.' });
      return;
    }

    response.json(result.rows[0]);
  } catch {
    response.status(500).json({ error: 'Não foi possível atualizar o produto.' });
  }
});

inventoryRouter.delete('/products/:id', async (request, response) => {
  const productId = Number(request.params.id);

  if (!Number.isInteger(productId) || productId <= 0) {
    response.status(400).json({ error: 'Identificador do produto inválido.' });
    return;
  }

  try {
    const product = await pool.query('SELECT id, quantidade FROM estoque WHERE id = $1', [productId]);

    if (product.rowCount === 0) {
      response.status(404).json({ error: 'Produto não encontrado.' });
      return;
    }

    const movementCount = await pool.query('SELECT COUNT(*)::int AS total FROM stock_movements WHERE product_id = $1', [productId]);

    if (Number(product.rows[0].quantidade) > 0 || Number(movementCount.rows[0].total) > 0) {
      response.status(409).json({
        error: 'Produto com estoque ou histórico de movimentações não pode ser excluído. Zere o estoque e mantenha produtos com histórico para preservar os registros.',
      });
      return;
    }

    await pool.query('DELETE FROM estoque WHERE id = $1', [productId]);
    response.json({ success: true });
  } catch {
    response.status(500).json({ error: 'Não foi possível excluir o produto.' });
  }
});

inventoryRouter.post('/movements', async (request, response) => {
  const { productId, type, quantity, notes } = request.body as {
    productId?: number;
    type?: 'entrada' | 'saida';
    quantity?: number;
    notes?: string;
  };

  if (!productId || !['entrada', 'saida'].includes(type ?? '') || !quantity || quantity <= 0) {
    response.status(400).json({ error: 'Produto, tipo e quantidade positiva são obrigatórios.' });
    return;
  }

  const client = await pool.connect();

  try {
    await client.query('BEGIN');
    const product = await client.query('SELECT quantidade FROM estoque WHERE id = $1 FOR UPDATE', [productId]);

    if (product.rowCount === 0) {
      await client.query('ROLLBACK');
      response.status(404).json({ error: 'Produto não encontrado.' });
      return;
    }

    const currentQuantity = Number(product.rows[0].quantidade ?? 0);
    if (type === 'saida' && currentQuantity < quantity) {
      await client.query('ROLLBACK');
      response.status(409).json({ error: 'Estoque insuficiente para esta saída.' });
      return;
    }

    const change = type === 'entrada' ? quantity : -quantity;
    await client.query('UPDATE estoque SET quantidade = COALESCE(quantidade, 0) + $1, updated_at = NOW() WHERE id = $2', [change, productId]);
    const movement = await client.query(`
      INSERT INTO stock_movements (product_id, type, quantity, notes)
      VALUES ($1, $2, $3, $4)
      RETURNING id, product_id, type, quantity, occurred_at, notes
    `, [productId, type, quantity, notes?.trim() ?? null]);
    await client.query('COMMIT');

    response.status(201).json(movement.rows[0]);
  } catch {
    await client.query('ROLLBACK');
    response.status(500).json({ error: 'Não foi possível registrar a movimentação.' });
  } finally {
    client.release();
  }
});

inventoryRouter.delete('/movements/:id', async (request, response) => {
  const movementId = Number(request.params.id);

  if (!Number.isInteger(movementId) || movementId <= 0) {
    response.status(400).json({ error: 'Identificador da movimentação inválido.' });
    return;
  }

  const client = await pool.connect();

  try {
    await client.query('BEGIN');
    const movement = await client.query(
      'SELECT product_id, type, quantity FROM stock_movements WHERE id = $1 FOR UPDATE',
      [movementId],
    );

    if (movement.rowCount === 0) {
      await client.query('ROLLBACK');
      response.status(404).json({ error: 'Movimentação não encontrada.' });
      return;
    }

    const { product_id: productId, type, quantity } = movement.rows[0] as {
      product_id: number;
      type: 'entrada' | 'saida';
      quantity: number;
    };
    const product = await client.query('SELECT quantidade FROM estoque WHERE id = $1 FOR UPDATE', [productId]);

    if (product.rowCount === 0) {
      await client.query('ROLLBACK');
      response.status(404).json({ error: 'Produto da movimentação não encontrado.' });
      return;
    }

    const currentQuantity = Number(product.rows[0].quantidade ?? 0);
    if (type === 'entrada' && currentQuantity < Number(quantity)) {
      await client.query('ROLLBACK');
      response.status(409).json({
        error: 'Esta entrada não pode ser removida porque o estoque atual é menor que a quantidade registrada.',
      });
      return;
    }

    const change = type === 'entrada' ? -Number(quantity) : Number(quantity);
    await client.query(
      'UPDATE estoque SET quantidade = COALESCE(quantidade, 0) + $1, updated_at = NOW() WHERE id = $2',
      [change, productId],
    );
    await client.query('DELETE FROM stock_movements WHERE id = $1', [movementId]);
    await client.query('COMMIT');

    response.json({ success: true });
  } catch {
    await client.query('ROLLBACK');
    response.status(500).json({ error: 'Não foi possível excluir a movimentação.' });
  } finally {
    client.release();
  }
});