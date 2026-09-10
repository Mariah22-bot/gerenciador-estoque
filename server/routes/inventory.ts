import { Router } from 'express';
import { pool } from '../db.js';

export const inventoryRouter = Router();

inventoryRouter.get('/dashboard/summary', async (_request, response) => {
  try {
    const result = await pool.query(`
      SELECT
        COUNT(*)::int AS product_count,
        COUNT(*) FILTER (WHERE quantity = 0)::int AS inactive_product_count,
        COALESCE(SUM(quantity * unit_price), 0)::numeric AS invested_capital,
        COALESCE((SELECT SUM(quantity) FROM stock_movements WHERE type = 'entrada'), 0)::int AS entries,
        COALESCE((SELECT SUM(quantity) FROM stock_movements WHERE type = 'saida'), 0)::int AS exits
      FROM products
    `);

    response.json(result.rows[0]);
  } catch {
    response.status(500).json({ error: 'Não foi possível consultar o resumo do dashboard.' });
  }
});

inventoryRouter.get('/products', async (_request, response) => {
  try {
    const result = await pool.query(`
      SELECT id, sku, name, category, quantity, unit_price, minimum_quantity,
             created_at, updated_at
      FROM products
      ORDER BY name ASC
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
             products.sku, products.name AS product_name
      FROM stock_movements AS movements
      INNER JOIN products ON products.id = movements.product_id
      ORDER BY movements.occurred_at DESC
    `);

    response.json(result.rows);
  } catch {
    response.status(500).json({ error: 'Não foi possível consultar as movimentações.' });
  }
});

inventoryRouter.post('/products', async (request, response) => {
  const { sku, name, category, quantity = 0, unitPrice = 0, minimumQuantity = 0 } = request.body as {
    sku?: string;
    name?: string;
    category?: string;
    quantity?: number;
    unitPrice?: number;
    minimumQuantity?: number;
  };

  if (!sku?.trim() || !name?.trim()) {
    response.status(400).json({ error: 'SKU e nome são obrigatórios.' });
    return;
  }

  try {
    const result = await pool.query(`
      INSERT INTO products (sku, name, category, quantity, unit_price, minimum_quantity)
      VALUES ($1, $2, $3, $4, $5, $6)
      RETURNING id, sku, name, category, quantity, unit_price, minimum_quantity
    `, [sku.trim(), name.trim(), category?.trim() ?? null, quantity, unitPrice, minimumQuantity]);

    response.status(201).json(result.rows[0]);
  } catch (error) {
    const isDuplicate = error instanceof Error && error.message.includes('products_sku_key');
    response.status(isDuplicate ? 409 : 500).json({
      error: isDuplicate ? 'Já existe um produto com este SKU.' : 'Não foi possível cadastrar o produto.',
    });
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
    const product = await client.query('SELECT quantity FROM products WHERE id = $1 FOR UPDATE', [productId]);

    if (product.rowCount === 0) {
      await client.query('ROLLBACK');
      response.status(404).json({ error: 'Produto não encontrado.' });
      return;
    }

    const currentQuantity = Number(product.rows[0].quantity);
    if (type === 'saida' && currentQuantity < quantity) {
      await client.query('ROLLBACK');
      response.status(409).json({ error: 'Estoque insuficiente para esta saída.' });
      return;
    }

    const change = type === 'entrada' ? quantity : -quantity;
    await client.query('UPDATE products SET quantity = quantity + $1, updated_at = NOW() WHERE id = $2', [change, productId]);
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