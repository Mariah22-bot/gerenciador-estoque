import type { AnalyticsData, DashboardSummary, Movement, Product } from './api';

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

const demoSummary: DashboardSummary = {
  product_count: demoProducts.length,
  products_without_turnover_count: 2,
  stock_units: demoProducts.reduce((total, product) => total + product.quantity, 0),
  invested_capital: demoProducts.reduce(
    (total, product) => total + Number(product.unit_price ?? 0) * product.quantity,
    0,
  ).toFixed(2),
  entries: 4,
  exits: 6,
};

const demoAnalytics: AnalyticsData = {
  topProducts: [
    { name: 'Almofada Nuvem', sku: 'DEMO-005', units_moved: 12 },
    { name: 'Cortina Aurora', sku: 'DEMO-001', units_moved: 9 },
    { name: 'Capa de cadeira Jardim', sku: 'DEMO-006', units_moved: 7 },
    { name: 'Almofada Brisa', sku: 'DEMO-002', units_moved: 5 },
  ],
  abc: [
    { classification: 'A', products: 2 },
    { classification: 'B', products: 2 },
    { classification: 'C', products: 2 },
  ],
  turnover: [
    { month: 'Mai', entries: 8, exits: 5 },
    { month: 'Jun', entries: 6, exits: 9 },
    { month: 'Jul', entries: 12, exits: 7 },
    { month: 'Ago', entries: 5, exits: 8 },
    { month: 'Set', entries: 10, exits: 6 },
    { month: 'Out', entries: 4, exits: 6 },
  ],
  turnoverByCategory: [
    { category: 'Almofadas', month: 'Mai', entries: 3, exits: 2 },
    { category: 'Almofadas', month: 'Jun', entries: 2, exits: 4 },
    { category: 'Almofadas', month: 'Jul', entries: 5, exits: 3 },
    { category: 'Almofadas', month: 'Ago', entries: 2, exits: 3 },
    { category: 'Almofadas', month: 'Set', entries: 4, exits: 2 },
    { category: 'Almofadas', month: 'Out', entries: 2, exits: 2 },
    { category: 'Capas de cadeira', month: 'Mai', entries: 2, exits: 1 },
    { category: 'Capas de cadeira', month: 'Jun', entries: 1, exits: 2 },
    { category: 'Capas de cadeira', month: 'Jul', entries: 3, exits: 1 },
    { category: 'Capas de cadeira', month: 'Ago', entries: 1, exits: 2 },
    { category: 'Capas de cadeira', month: 'Set', entries: 2, exits: 1 },
    { category: 'Capas de cadeira', month: 'Out', entries: 1, exits: 2 },
    { category: 'Cortinas', month: 'Mai', entries: 3, exits: 2 },
    { category: 'Cortinas', month: 'Jun', entries: 3, exits: 3 },
    { category: 'Cortinas', month: 'Jul', entries: 4, exits: 3 },
    { category: 'Cortinas', month: 'Ago', entries: 2, exits: 3 },
    { category: 'Cortinas', month: 'Set', entries: 4, exits: 3 },
    { category: 'Cortinas', month: 'Out', entries: 1, exits: 2 },
  ],
};

export const demoData = {
  getProducts: (): Product[] => demoProducts.map((product) => ({ ...product })),
  getMovements: (): Movement[] => demoMovements.map((movement) => ({ ...movement })),
  getSummary: (): DashboardSummary => ({ ...demoSummary }),
  getAnalytics: (): AnalyticsData => ({
    ...demoAnalytics,
    topProducts: demoAnalytics.topProducts.map((product) => ({ ...product })),
    abc: demoAnalytics.abc.map((entry) => ({ ...entry })),
    turnover: demoAnalytics.turnover.map((entry) => ({ ...entry })),
    turnoverByCategory: demoAnalytics.turnoverByCategory.map((entry) => ({ ...entry })),
  }),
};
