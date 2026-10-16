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
  products_without_turnover_count: number;
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
  unitPrice?: number;
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

export class ApiError extends Error {
  readonly status: number;

  constructor(message: string, status: number) {
    super(message);
    this.name = 'ApiError';
    this.status = status;
  }
}

async function request<T>(path: string, options?: RequestInit): Promise<T> {
  const response = await fetch(path, {
    headers: { 'Content-Type': 'application/json' },
    ...options,
  });

  if (!response.ok) {
    const body = await response.json().catch(() => ({})) as { error?: string };
    if (response.status === 401 && !path.startsWith('/api/auth/')) {
      window.dispatchEvent(new Event('auth:unauthorized'));
    }
    throw new ApiError(body.error ?? 'Não foi possível concluir a requisição.', response.status);
  }

  if (response.status === 204) {
    return undefined as T;
  }

  return response.json() as Promise<T>;
}

export const authApi = {
  getSession: () => request<{ authenticated: true }>('/api/auth/session'),
  login: (username: string, password: string) => request<{ authenticated: true }>('/api/auth/login', {
    method: 'POST',
    body: JSON.stringify({ username, password }),
  }),
  logout: () => request<void>('/api/auth/logout', { method: 'POST' }),
};

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
  deleteMovement: (id: number) => request<{ success: true }>(`/api/movements/${id}`, {
    method: 'DELETE',
  }),
  getAnalytics: () => request<AnalyticsData>('/api/analytics'),
};