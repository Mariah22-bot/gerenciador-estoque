import { Pool } from 'pg';
import { env } from './config/env.js';

export const pool = new Pool({
  connectionString: env.databaseUrl,
  max: 3,
  idleTimeoutMillis: 10_000,
  connectionTimeoutMillis: 5_000,
});