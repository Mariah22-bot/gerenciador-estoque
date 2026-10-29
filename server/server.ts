import { app } from './app.js';
import { env } from './config/env.js';

app.listen(env.port, '127.0.0.1', () => {
  console.log(`API do gerenciador de estoque disponível em http://localhost:${env.port}`);
});