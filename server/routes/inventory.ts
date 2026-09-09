import { Router } from 'express';
import { pool } from '../db.js';

export const inventoryRouter = Router();

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