import 'dotenv/config';

function getRequiredEnv(name: string): string {
  const value = process.env[name];

  if (!value) {
    throw new Error(`A variável de ambiente ${name} não foi definida.`);
  }

  return value;
}

const authorizedEmails = getRequiredEnv('AUTHORIZED_EMAILS')
  .split(',')
  .map((email) => email.trim().toLowerCase())
  .filter(Boolean);

if (authorizedEmails.length === 0) {
  throw new Error('AUTHORIZED_EMAILS deve conter pelo menos um e-mail permitido.');
}

export const env = {
  port: Number(process.env.PORT ?? 3000),
  databaseUrl: getRequiredEnv('DATABASE_URL'),
  supabaseUrl: getRequiredEnv('SUPABASE_URL'),
  supabasePublishableKey: getRequiredEnv('SUPABASE_PUBLISHABLE_KEY'),
  authorizedEmails,
};