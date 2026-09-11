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
  unit_price?: string;
  minimum_quantity?: number;
  fonte: string;
  secao: string | null;
  produto: string;
  modelo: string | null;
  cor: string | null;
  tamanho: string | null;
  unidade: string;
  tecido_composicao: string | null;
  item: string | null;
  medida: string | null;
  observacoes: string | null;
}

export interface DashboardSummary {
  product_count: number;
  inactive_product_count: number;
  invested_capital: string;
  entries: number;
  exits: number;
}

export interface AnalyticsData {
  topProducts: { name: string; sku: string; units_moved: number }[];
  abc: { classification: 'A' | 'B' | 'C'; products: number }[];
  turnover: { month: string; entries: number; exits: number }[];
}

export type ProductPayload = {
  fonte?: string;
  secao?: string;
  produto: string;
  modelo?: string;
  cor?: string;
  tamanho?: string;
  quantity?: number;
  unidade?: string;
  tecidoComposicao?: string;
  item?: string;
  medida?: string;
  observacoes?: string;
};

export function notifyInventoryRefresh(): void {
  if (typeof window !== 'undefined') {
    window.dispatchEvent(new CustomEvent('inventory:updated'));
  }
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
  createProduct: (payload: ProductPayload) => request<Product>('/api/products', {
    method: 'POST',
    body: JSON.stringify(payload),
  }),
  updateProduct: (id: number, payload: ProductPayload) => request<Product>(`/api/products/${id}`, {
    method: 'PUT',
    body: JSON.stringify(payload),
  }),
  deleteProduct: (id: number) => request<{ success: true }>(`/api/products/${id}`, {
    method: 'DELETE',
  }),
  createMovement: (payload: { productId: number; type: 'entrada' | 'saida'; quantity: number; notes?: string }) => request<Movement>('/api/movements', {
    method: 'POST',
    body: JSON.stringify(payload),
  }),
  getAnalytics: () => request<AnalyticsData>('/api/analytics'),
};