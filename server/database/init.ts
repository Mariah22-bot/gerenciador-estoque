import { readFile } from 'node:fs/promises';
import { fileURLToPath } from 'node:url';
import { pool } from '../db.js';

const schemaPath = fileURLToPath(new URL('./schema.sql', import.meta.url));

try {
  const schema = await readFile(schemaPath, 'utf8');
  await pool.query(schema);
  console.log('Banco inicializado com sucesso.');
} catch (error) {
  console.error('Não foi possível inicializar o banco de dados.', error);
  process.exitCode = 1;
} finally {
  await pool.end();
}