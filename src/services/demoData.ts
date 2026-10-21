import type { AnalyticsData, DashboardSummary, Movement, Product, ProductPayload } from './api';

interface DemoState {
  products: Product[];
  movements: Movement[];
}

interface MovementPayload {
  productId: number;
  type: 'entrada' | 'saida';
  quantity: number;
  notes?: string;
}

const storageKey = 'gerenciador-estoque:demo:v1';

const demoProducts: Product[] = [
  {
    id: 1, sku: 'DEMO-001', name: 'Cortina Aurora', category: 'Cortinas', quantity: 12,
    unit_price: '149.90', minimum_quantity: 3, secao: 'Cortinas', produto: 'Cortina Aurora',
    modelo: 'Blackout', cor: 'Areia', tamanho: '2,00 x 1,80 m', unidade: 'un',
    tecido_composicao: 'Poliéster', item: null, medida: '2,00 x 1,80 m', observacoes: null,
  },
  {
    id: 2, sku: 'DEMO-002', name: 'Almofada Brisa', category: 'Almofadas', quantity: 8,
    unit_price: '39.90', minimum_quantity: 2, secao: 'Almofadas', produto: 'Almofada Brisa',
    modelo: 'Decorativa', cor: 'Verde', tamanho: '45 x 45 cm', unidade: 'un',
    tecido_composicao: 'Algodão', item: null, medida: '45 x 45 cm', observacoes: null,
  },
  {
    id: 3, sku: 'DEMO-003', name: 'Capa de cadeira Lume', category: 'Capas de cadeira', quantity: 5,
    unit_price: '24.90', minimum_quantity: 2, secao: 'Capas de cadeira', produto: 'Capa de cadeira Lume',
    modelo: 'Elástica', cor: 'Cinza', tamanho: 'Único', unidade: 'un',
    tecido_composicao: 'Poliéster e elastano', item: null, medida: null, observacoes: null,
  },
  {
    id: 4, sku: 'DEMO-004', name: 'Cortina Horizonte', category: 'Cortinas', quantity: 7,
    unit_price: '119.90', minimum_quantity: 2, secao: 'Cortinas', produto: 'Cortina Horizonte',
    modelo: 'Voil', cor: 'Branco', tamanho: '3,00 x 1,70 m', unidade: 'un',
    tecido_composicao: 'Voil', item: null, medida: '3,00 x 1,70 m', observacoes: null,
  },
  {
    id: 5, sku: 'DEMO-005', name: 'Almofada Nuvem', category: 'Almofadas', quantity: 14,
    unit_price: '34.90', minimum_quantity: 4, secao: 'Almofadas', produto: 'Almofada Nuvem',
    modelo: 'Lisa', cor: 'Azul', tamanho: '40 x 40 cm', unidade: 'un',
    tecido_composicao: 'Linho misto', item: null, medida: '40 x 40 cm', observacoes: null,
  },
  {
    id: 6, sku: 'DEMO-006', name: 'Capa de cadeira Jardim', category: 'Capas de cadeira', quantity: 9,
    unit_price: '29.90', minimum_quantity: 3, secao: 'Capas de cadeira', produto: 'Capa de cadeira Jardim',
    modelo: 'Estampada', cor: 'Floral', tamanho: 'Único', unidade: 'un',
    tecido_composicao: 'Algodão', item: null, medida: null, observacoes: null,
  },
];

const demoMovements: Movement[] = [
  {
    id: 1, sku: 'DEMO-001', product_name: 'Cortina Aurora', type: 'saida', quantity: 2,
    occurred_at: new Date(Date.now() - 60 * 60 * 1000).toISOString(), notes: 'Exemplo de saída',
  },
  {
    id: 2, sku: 'DEMO-002', product_name: 'Almofada Brisa', type: 'entrada', quantity: 4,
    occurred_at: new Date(Date.now() - 8 * 60 * 60 * 1000).toISOString(), notes: 'Exemplo de reposição',
  },
  {
    id: 3, sku: 'DEMO-005', product_name: 'Almofada Nuvem', type: 'saida', quantity: 3,
    occurred_at: new Date(Date.now() - 24 * 60 * 60 * 1000).toISOString(), notes: null,
  },
  {
    id: 4, sku: 'DEMO-006', product_name: 'Capa de cadeira Jardim', type: 'saida', quantity: 1,
    occurred_at: new Date(Date.now() - 2 * 24 * 60 * 60 * 1000).toISOString(), notes: null,
  },
];

function createInitialState(): DemoState {
  return {
    products: demoProducts.map((product) => ({ ...product })),
    movements: demoMovements.map((movement) => ({ ...movement })),
  };
}

function readState(): DemoState {
  const saved = localStorage.getItem(storageKey);
  if (saved === null) return createInitialState();

  try {
    const state: unknown = JSON.parse(saved);
    if (
      typeof state !== 'object'
      || state === null
      || !('products' in state)
      || !Array.isArray(state.products)
      || !('movements' in state)
      || !Array.isArray(state.movements)
    ) {
      throw new Error('Formato de dados inválido.');
    }
    return state as DemoState;
  } catch (error: unknown) {
    throw new Error('Não foi possível carregar os dados salvos da demonstração.', { cause: error });
  }
}

function saveState(state: DemoState): void {
  localStorage.setItem(storageKey, JSON.stringify(state));
  window.dispatchEvent(new CustomEvent('inventory:updated'));
}

function nextId(records: Array<{ id: number }>): number {
  return records.reduce((maximum, record) => Math.max(maximum, record.id), 0) + 1;
}

function createMovement(
  state: DemoState,
  product: Product,
  type: Movement['type'],
  quantity: number,
  notes?: string,
): Movement {
  const movement: Movement = {
    id: nextId(state.movements),
    sku: product.sku,
    product_name: product.produto,
    type,
    quantity,
    occurred_at: new Date().toISOString(),
    notes: notes?.trim() || null,
  };
  state.movements.unshift(movement);
  return movement;
}

function validateProductPayload(payload: ProductPayload): void {
  if (!payload.produto?.trim()) throw new Error('Produto é obrigatório.');
  const quantity = payload.quantity ?? 0;
  if (!Number.isInteger(quantity) || quantity < 0) {
    throw new Error('A quantidade deve ser um número inteiro não negativo.');
  }
  const unitPrice = payload.unitPrice ?? 0;
  if (!Number.isFinite(unitPrice) || unitPrice < 0) {
    throw new Error('O preço deve ser um número não negativo.');
  }
}

function getSummary(state: DemoState): DashboardSummary {
  const movedOut = new Set(state.movements.filter((movement) => movement.type === 'saida').map((movement) => movement.sku));
  return {
    product_count: state.products.length,
    products_without_turnover_count: state.products.filter((product) => !movedOut.has(product.sku)).length,
    stock_units: state.products.reduce((total, product) => total + product.quantity, 0),
    invested_capital: state.products.reduce(
      (total, product) => total + Number(product.unit_price ?? 0) * product.quantity,
      0,
    ).toFixed(2),
    entries: state.movements.filter((movement) => movement.type === 'entrada').reduce((total, movement) => total + movement.quantity, 0),
    exits: state.movements.filter((movement) => movement.type === 'saida').reduce((total, movement) => total + movement.quantity, 0),
  };
}

function getAnalytics(state: DemoState): AnalyticsData {
  const now = new Date();
  const months = Array.from({ length: 6 }, (_, index) => new Date(now.getFullYear(), now.getMonth() - 5 + index, 1));
  const monthKey = (date: Date): string => `${date.getFullYear()}-${date.getMonth()}`;
  const monthLabel = (date: Date): string => new Intl.DateTimeFormat('pt-BR', { month: 'short' }).format(date).replace('.', '');
  const turnover = months.map((month) => {
    const key = monthKey(month);
    const monthlyMovements = state.movements.filter((movement) => {
      const date = new Date(movement.occurred_at);
      return monthKey(date) === key;
    });
    return {
      month: monthLabel(month),
      entries: monthlyMovements.filter((movement) => movement.type === 'entrada').reduce((total, movement) => total + movement.quantity, 0),
      exits: monthlyMovements.filter((movement) => movement.type === 'saida').reduce((total, movement) => total + movement.quantity, 0),
    };
  });
  const turnoverByCategory = state.products.flatMap((product) => months.map((month) => {
    const key = monthKey(month);
    const productMovements = state.movements.filter((movement) => {
      return movement.sku === product.sku && monthKey(new Date(movement.occurred_at)) === key;
    });
    return {
      category: product.secao || 'Sem seção',
      month: monthLabel(month),
      entries: productMovements.filter((movement) => movement.type === 'entrada').reduce((total, movement) => total + movement.quantity, 0),
      exits: productMovements.filter((movement) => movement.type === 'saida').reduce((total, movement) => total + movement.quantity, 0),
    };
  }));
  const unitsBySku = new Map<string, number>();
  for (const movement of state.movements) {
    if (movement.type === 'saida') {
      unitsBySku.set(movement.sku, (unitsBySku.get(movement.sku) ?? 0) + movement.quantity);
    }
  }
  const topProducts = state.products
    .map((product) => ({ name: product.produto, sku: product.sku, units_moved: unitsBySku.get(product.sku) ?? 0 }))
    .filter((product) => product.units_moved > 0)
    .sort((a, b) => b.units_moved - a.units_moved)
    .slice(0, 5);

  const valueByProduct = state.products
    .map((product) => ({
      value: (unitsBySku.get(product.sku) ?? 0) * Number(product.unit_price ?? 0),
    }))
    .sort((a, b) => b.value - a.value);
  const totalValue = valueByProduct.reduce((total, product) => total + product.value, 0);
  let accumulatedValue = 0;
  const abc = { A: 0, B: 0, C: 0 };
  for (const product of valueByProduct) {
    accumulatedValue += product.value;
    const classification = totalValue === 0 || accumulatedValue / totalValue > 0.95
      ? 'C'
      : accumulatedValue / totalValue > 0.8
        ? 'B'
        : 'A';
    abc[classification] += 1;
  }

  return {
    topProducts,
    abc: (['A', 'B', 'C'] as const).map((classification) => ({ classification, products: abc[classification] })),
    turnover,
    turnoverByCategory,
  };
}

export const demoData = {
  getProducts: (): Product[] => readState().products.map((product) => ({ ...product })),
  getMovements: (): Movement[] => readState().movements
    .filter((movement) => Date.now() - new Date(movement.occurred_at).getTime() <= 7 * 24 * 60 * 60 * 1000)
    .map((movement) => ({ ...movement })),
  getSummary: (): DashboardSummary => getSummary(readState()),
  getAnalytics: (): AnalyticsData => getAnalytics(readState()),
  createProduct: (payload: ProductPayload): Product => {
    validateProductPayload(payload);
    const state = readState();
    const productId = nextId(state.products);
    const nextSku = state.products.reduce((maximum, product) => {
      const match = /^DEMO-(\d+)$/.exec(product.sku);
      return match ? Math.max(maximum, Number(match[1])) : maximum;
    }, 0) + 1;
    const product: Product = {
      id: productId,
      sku: `DEMO-${String(nextSku).padStart(3, '0')}`,
      name: payload.produto.trim(),
      category: payload.secao?.trim() || null,
      quantity: payload.quantity ?? 0,
      unit_price: (payload.unitPrice ?? 0).toFixed(2),
      minimum_quantity: 0,
      secao: payload.secao?.trim() || null,
      produto: payload.produto.trim(),
      modelo: payload.modelo?.trim() || null,
      cor: payload.cor?.trim() || null,
      tamanho: payload.tamanho?.trim() || null,
      unidade: payload.unidade?.trim() || 'un',
      tecido_composicao: payload.tecidoComposicao?.trim() || null,
      item: payload.item?.trim() || null,
      medida: payload.medida?.trim() || null,
      observacoes: payload.observacoes?.trim() || null,
    };
    state.products.push(product);
    if (product.quantity > 0) {
      createMovement(state, product, 'entrada', product.quantity, 'Estoque inicial informado no cadastro do produto.');
    }
    saveState(state);
    return { ...product };
  },
  updateProduct: (id: number, payload: ProductPayload): Product => {
    validateProductPayload(payload);
    const state = readState();
    const index = state.products.findIndex((product) => product.id === id);
    if (index === -1) throw new Error('Produto não encontrado.');
    const current = state.products[index];
    const quantity = payload.quantity ?? 0;
    const updated: Product = {
      ...current,
      name: payload.produto.trim(),
      category: payload.secao?.trim() || null,
      quantity,
      unit_price: (payload.unitPrice ?? 0).toFixed(2),
      secao: payload.secao?.trim() || null,
      produto: payload.produto.trim(),
      modelo: payload.modelo?.trim() || null,
      cor: payload.cor?.trim() || null,
      tamanho: payload.tamanho?.trim() || null,
      unidade: payload.unidade?.trim() || 'un',
      tecido_composicao: payload.tecidoComposicao?.trim() || null,
      item: payload.item?.trim() || null,
      medida: payload.medida?.trim() || null,
      observacoes: payload.observacoes?.trim() || null,
    };
    state.products[index] = updated;
    const quantityDifference = quantity - current.quantity;
    if (quantityDifference !== 0) {
      createMovement(
        state,
        updated,
        quantityDifference > 0 ? 'entrada' : 'saida',
        Math.abs(quantityDifference),
        'Ajuste de estoque realizado pela edição do produto.',
      );
    }
    saveState(state);
    return { ...updated };
  },
  deleteProduct: (id: number): { success: true } => {
    const state = readState();
    const product = state.products.find((item) => item.id === id);
    if (!product) throw new Error('Produto não encontrado.');
    const hasMovements = state.movements.some((movement) => movement.sku === product.sku);
    if (product.quantity > 0 || hasMovements) {
      throw new Error('Produto com estoque ou histórico de movimentações não pode ser excluído. Zere o estoque e mantenha produtos com histórico para preservar os registros.');
    }
    state.products = state.products.filter((item) => item.id !== id);
    saveState(state);
    return { success: true };
  },
  createMovement: (payload: MovementPayload): Movement => {
    const state = readState();
    if (!Number.isInteger(payload.productId) || payload.productId <= 0) throw new Error('Identificador do produto inválido.');
    if (payload.type !== 'entrada' && payload.type !== 'saida') throw new Error('Tipo de movimentação inválido.');
    const product = state.products.find((item) => item.id === payload.productId);
    if (!product) throw new Error('Produto não encontrado.');
    if (!Number.isInteger(payload.quantity) || payload.quantity <= 0) throw new Error('A quantidade deve ser um número inteiro positivo.');
    if (payload.type === 'saida' && product.quantity < payload.quantity) throw new Error('Estoque insuficiente para esta saída.');
    product.quantity += payload.type === 'entrada' ? payload.quantity : -payload.quantity;
    const movement = createMovement(state, product, payload.type, payload.quantity, payload.notes);
    saveState(state);
    return { ...movement };
  },
  deleteMovement: (id: number): { success: true } => {
    const state = readState();
    if (!Number.isInteger(id) || id <= 0) throw new Error('Identificador da movimentação inválido.');
    const movementIndex = state.movements.findIndex((item) => item.id === id);
    if (movementIndex === -1) throw new Error('Movimentação não encontrada.');
    const movement = state.movements[movementIndex];
    const product = state.products.find((item) => item.sku === movement.sku);
    if (!product) throw new Error('Produto da movimentação não encontrado.');
    if (movement.type === 'entrada' && product.quantity < movement.quantity) {
      throw new Error('Esta entrada não pode ser removida porque o estoque atual é menor que a quantidade registrada.');
    }
    product.quantity += movement.type === 'entrada' ? -movement.quantity : movement.quantity;
    state.movements.splice(movementIndex, 1);
    saveState(state);
    return { success: true };
  },
  reset: (): void => {
    localStorage.removeItem(storageKey);
    window.dispatchEvent(new CustomEvent('inventory:updated'));
  },
};
