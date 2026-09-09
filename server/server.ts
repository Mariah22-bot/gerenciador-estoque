import { app } from './app.js';
import { env } from './config/env.js';

app.listen(env.port, () => {
  console.log(`API do gerenciador de estoque disponível em http://localhost:${env.port}`);
});