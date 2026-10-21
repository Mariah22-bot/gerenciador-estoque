import { demoData } from './demoData';

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
  stock_units: number;
  invested_capital: string;
  entries: number;
  exits: number;
}

export interface AnalyticsData {
  topProducts: { name: string; sku: string; units_moved: number }[];
  abc: { classification: 'A' | 'B' | 'C'; products: number }[];
  turnover: { month: string; entries: number; exits: number }[];
  turnoverByCategory: { category: string; month: string; entries: number; exits: number }[];
}

export type ProductPayload = {
  sku?: string;
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

export const isDemoMode = import.meta.env.PROD || import.meta.env.VITE_DEMO_MODE === 'true';

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

  if (response.status === 204) {
    return undefined as T;
  }

  return response.json() as Promise<T>;
}

export const inventoryApi = {
  getSummary: () => isDemoMode ? Promise.resolve().then(() => demoData.getSummary()) : request<DashboardSummary>('/api/dashboard/summary'),
  getMovements: () => isDemoMode ? Promise.resolve().then(() => demoData.getMovements()) : request<Movement[]>('/api/movements'),
  getProducts: () => isDemoMode ? Promise.resolve().then(() => demoData.getProducts()) : request<Product[]>('/api/products'),
  createProduct: (payload: ProductPayload) => isDemoMode
    ? Promise.resolve().then(() => demoData.createProduct(payload))
    : request<Product>('/api/products', {
      method: 'POST',
      body: JSON.stringify(payload),
    }),
  updateProduct: (id: number, payload: ProductPayload) => isDemoMode
    ? Promise.resolve().then(() => demoData.updateProduct(id, payload))
    : request<Product>(`/api/products/${id}`, {
      method: 'PUT',
      body: JSON.stringify(payload),
    }),
  deleteProduct: (id: number) => isDemoMode
    ? Promise.resolve().then(() => demoData.deleteProduct(id))
    : request<{ success: true }>(`/api/products/${id}`, {
      method: 'DELETE',
    }),
  createMovement: (payload: { productId: number; type: 'entrada' | 'saida'; quantity: number; notes?: string }) => isDemoMode
    ? Promise.resolve().then(() => demoData.createMovement(payload))
    : request<Movement>('/api/movements', {
      method: 'POST',
      body: JSON.stringify(payload),
    }),
  deleteMovement: (id: number) => isDemoMode
    ? Promise.resolve().then(() => demoData.deleteMovement(id))
    : request<{ success: true }>(`/api/movements/${id}`, {
      method: 'DELETE',
    }),
  getAnalytics: () => isDemoMode ? Promise.resolve().then(() => demoData.getAnalytics()) : request<AnalyticsData>('/api/analytics'),
};
