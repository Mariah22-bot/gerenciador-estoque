import { createClient } from '@supabase/supabase-js';
import type { RequestHandler } from 'express';
import { env } from './config/env.js';

const supabase = createClient(env.supabaseUrl, env.supabasePublishableKey, {
  auth: {
    autoRefreshToken: false,
    persistSession: false,
  },
});

export const requireAuth: RequestHandler = async (request, response, next) => {
  const authorization = request.get('authorization');
  const [scheme, token] = authorization?.split(' ') ?? [];

  if (scheme !== 'Bearer' || !token) {
    response.status(401).json({ error: 'Autenticação obrigatória.' });
    return;
  }

  try {
    const { data, error } = await supabase.auth.getUser(token);
    if (error) {
      if (error.status === 401 || error.status === 403) {
        response.status(401).json({ error: 'Sessão inválida ou expirada.' });
        return;
      }
      response.status(503).json({ error: 'Não foi possível validar a sessão.' });
      return;
    }

    const email = data.user.email?.toLowerCase();
    if (!email || !env.authorizedEmails.includes(email)) {
      response.status(403).json({ error: 'Esta conta não tem acesso ao estoque.' });
      return;
    }

    next();
  } catch {
    response.status(503).json({ error: 'Não foi possível validar a sessão.' });
  }
};
