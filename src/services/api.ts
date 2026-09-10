export interface Movement {
  id: number;
  sku: string;
  product_name: string;
  type: 'entrada' | 'saida';
  quantity: number;
  occurred_at: string;
  notes: string | null;
}

export interface DashboardSummary {
  product_count: number;
  inactive_product_count: number;
  invested_capital: string;
  entries: number;
  exits: number;
}

async function request<T>(path: string, options?: RequestInit): Promise<T> {
  const response = await fetch(path, {
    headers: { 'Content-Type': 'application/json' },
    ...options,
  });

  if (!response.ok) {
    const body = await response.json().catch(() => ({})) as { error?: string };
    throw new Error(body.error ?? 'Não foi possível concluir a requisição.');
  }

  return response.json() as Promise<T>;
}

export const inventoryApi = {
  getSummary: () => request<DashboardSummary>('/api/dashboard/summary'),
  getMovements: () => request<Movement[]>('/api/movements'),
};