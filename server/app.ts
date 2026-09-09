import express from 'express';
import { pool } from './db.js';
import { inventoryRouter } from './routes/inventory.js';

export const app = express();

app.use(express.json());
app.use('/api', inventoryRouter);

app.get('/api/health', async (_request, response) => {
  try {
    await pool.query('SELECT 1');
    response.json({ status: 'ok', database: 'connected' });
  } catch {
    response.status(503).json({ status: 'error', database: 'unavailable' });
  }
});