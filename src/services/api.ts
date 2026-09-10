export interface Movement {
  id: number;
  sku: string;
  product_name: string;
  type: 'entrada' | 'saida';
  quantity: number;
  occurred_at: string;
  notes: string | null;
}

export interface Product {
  id: number;
  sku: string;
  name: string;
  category: string | null;
  quantity: number;
  unit_price: string;
  minimum_quantity: number;
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
  getProducts: () => request<Product[]>('/api/products'),
  createProduct: (payload: { sku: string; name: string; category?: string; quantity?: number; unitPrice?: number; minimumQuantity?: number }) => request<Product>('/api/products', {
    method: 'POST',
    body: JSON.stringify(payload),
  }),
  createMovement: (payload: { productId: number; type: 'entrada' | 'saida'; quantity: number; notes?: string }) => request<Movement>('/api/movements', {
    method: 'POST',
    body: JSON.stringify(payload),
  }),
};