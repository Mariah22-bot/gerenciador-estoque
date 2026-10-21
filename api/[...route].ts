import type { Request, Response } from 'express';

export default async function handler(request: Request, response: Response): Promise<void> {
  if (process.env.API_ENABLED !== 'true') {
    response.status(404).json({ error: 'Rota não encontrada.' });
    return;
  }

  const { app } = await import('../server/app.js');
  app(request, response);
}
