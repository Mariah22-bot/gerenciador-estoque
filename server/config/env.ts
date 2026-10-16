import 'dotenv/config';

function getRequiredEnv(name: string): string {
  const value = process.env[name];

  if (!value) {
    throw new Error(`A variável de ambiente ${name} não foi definida.`);
  }

  return value;
}

export const env = {
  port: Number(process.env.PORT ?? 3000),
  databaseUrl: getRequiredEnv('DATABASE_URL'),
  appUsername: getRequiredEnv('APP_USERNAME'),
  appPassword: getRequiredEnv('APP_PASSWORD'),
  sessionSecret: getRequiredEnv('SESSION_SECRET'),
};

if (env.sessionSecret.length < 32) {
  throw new Error('A variável SESSION_SECRET deve ter pelo menos 32 caracteres.');
}