import { createHmac, randomBytes, timingSafeEqual } from 'node:crypto';
import { Router, type Request, type Response } from 'express';
import { env } from '../config/env.js';

const COOKIE_NAME = 'estoque_session';
const SESSION_DURATION_SECONDS = 60 * 60 * 8;
const activeSessions = new Map<string, number>();

export const authRouter = Router();

function safeEqual(left: string, right: string): boolean {
  const leftHash = createHmac('sha256', env.sessionSecret).update(left).digest();
  const rightHash = createHmac('sha256', env.sessionSecret).update(right).digest();
  return timingSafeEqual(leftHash, rightHash);
}

function getSessionToken(request: Request): string | undefined {
  const cookie = request.headers.cookie
    ?.split(';')
    .map((part) => part.trim())
    .find((part) => part.startsWith(`${COOKIE_NAME}=`));
  return cookie?.slice(COOKIE_NAME.length + 1);
}

function createSessionToken(): string {
  const expiresAt = Date.now() + SESSION_DURATION_SECONDS * 1000;
  const payload = `${expiresAt}.${randomBytes(32).toString('base64url')}`;
  const signature = createHmac('sha256', env.sessionSecret).update(payload).digest('base64url');
  const token = `${payload}.${signature}`;

  for (const [session, expiry] of activeSessions) {
    if (expiry <= Date.now()) activeSessions.delete(session);
  }

  activeSessions.set(token, expiresAt);
  return token;
}

function hasValidSession(request: Request): boolean {
  const token = getSessionToken(request);
  if (!token) {
    return false;
  }

  const [expiresAt, nonce, signature, extra] = token.split('.');
  if (!expiresAt || !nonce || !signature || extra !== undefined || !/^\d+$/.test(expiresAt)) {
    return false;
  }

  const payload = `${expiresAt}.${nonce}`;
  const expectedSignature = createHmac('sha256', env.sessionSecret).update(payload).digest('base64url');
  const supplied = Buffer.from(signature);
  const expected = Buffer.from(expectedSignature);

  if (supplied.length !== expected.length || !timingSafeEqual(supplied, expected)) {
    return false;
  }

  const expiry = Number(expiresAt);
  return expiry > Date.now() && activeSessions.get(token) === expiry;
}

export function requireAuth(request: Request, response: Response, next: () => void): void {
  if (!hasValidSession(request)) {
    response.status(401).json({ error: 'É necessário fazer login para acessar este recurso.' });
    return;
  }

  next();
}

authRouter.post('/login', (request, response) => {
  const { username, password } = request.body as { username?: unknown; password?: unknown };

  if (
    typeof username !== 'string'
    || typeof password !== 'string'
    || !safeEqual(username, env.appUsername)
    || !safeEqual(password, env.appPassword)
  ) {
    response.status(401).json({ error: 'Usuário ou senha incorretos.' });
    return;
  }

  response.cookie(COOKIE_NAME, createSessionToken(), {
    httpOnly: true,
    secure: process.env.NODE_ENV === 'production',
    sameSite: 'strict',
    path: '/',
    maxAge: SESSION_DURATION_SECONDS * 1000,
  });
  response.json({ authenticated: true });
});

authRouter.get('/session', requireAuth, (_request, response) => {
  response.json({ authenticated: true });
});

authRouter.post('/logout', (request, response) => {
  const token = getSessionToken(request);
  if (token) activeSessions.delete(token);

  response.clearCookie(COOKIE_NAME, {
    httpOnly: true,
    secure: process.env.NODE_ENV === 'production',
    sameSite: 'strict',
    path: '/',
  });
  response.status(204).end();
});
