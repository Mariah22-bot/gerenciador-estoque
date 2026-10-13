import { readFile } from 'node:fs/promises';
import { fileURLToPath } from 'node:url';
import type { PoolClient } from 'pg';
import { pool } from '../db.js';

const schemaPath = fileURLToPath(new URL('./schema.sql', import.meta.url));
let client: PoolClient | undefined;

try {
  client = await pool.connect();
  const schema = await readFile(schemaPath, 'utf8');
  await client.query('BEGIN');
  await client.query(schema);
  await client.query('COMMIT');
  console.log('Banco inicializado com sucesso.');
} catch (error) {
  if (client) {
    await client.query('ROLLBACK').catch(() => undefined);
  }
  console.error('Não foi possível inicializar o banco de dados.', error);
  process.exitCode = 1;
} finally {
  client?.release();
  await pool.end();
}
