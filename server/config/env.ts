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
};