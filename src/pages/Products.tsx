import { useCallback, useEffect, useMemo, useState, type FormEvent, type JSX } from 'react';
import Icon from '../components/Icon';
import { inventoryApi, notifyInventoryRefresh, type Product, type ProductPayload } from '../services/api';

interface ProductFormProps {
    mode: 'create' | 'edit';
    initialProduct?: Product | null;
    onClose: () => void;
    onSubmit: (payload: ProductPayload) => Promise<void>;
}

function ProductForm({ mode, initialProduct, onClose, onSubmit }: ProductFormProps): JSX.Element {
    const [sku, setSku] = useState(initialProduct?.sku ?? '');
    const [name, setName] = useState(initialProduct?.name ?? '');
    const [category, setCategory] = useState(initialProduct?.category ?? '');
    const [quantity, setQuantity] = useState(String(initialProduct?.quantity ?? 0));
    const [unitPrice, setUnitPrice] = useState(String(initialProduct?.unit_price ?? '0'));
    const [minimumQuantity, setMinimumQuantity] = useState(String(initialProduct?.minimum_quantity ?? 0));
    const [error, setError] = useState<string | null>(null);
    const [saving, setSaving] = useState(false);

    useEffect(() => {
        if (!initialProduct) {
            setSku('');
            setName('');
            setCategory('');
            setQuantity('0');
            setUnitPrice('0');
            setMinimumQuantity('0');
            return;
        }

        setSku(initialProduct.sku);
        setName(initialProduct.name);
        setCategory(initialProduct.category ?? '');
        setQuantity(String(initialProduct.quantity));
        setUnitPrice(String(initialProduct.unit_price ?? '0'));
        setMinimumQuantity(String(initialProduct.minimum_quantity));
    }, [initialProduct]);

    async function handleSubmit(event: FormEvent<HTMLFormElement>): Promise<void> {
        event.preventDefault();
        setError(null);
        setSaving(true);

        try {
            await onSubmit({
                sku,
                name,
                category,
                quantity: Number(quantity),
                unitPrice: Number(unitPrice),
                minimumQuantity: Number(minimumQuantity),
            });
            onClose();
        } catch (submitError: unknown) {
            setError(submitError instanceof Error ? submitError.message : `Não foi possível ${mode === 'create' ? 'cadastrar' : 'atualizar'} o produto.`);
        } finally {
            setSaving(false);
        }
    }

    return (
        <div className="fixed inset-0 z-10 flex items-center justify-center bg-slate-950/40 p-4">
            <form onSubmit={handleSubmit} className="w-full max-w-lg rounded-xl bg-white p-5 shadow-xl">
                <div className="mb-4 flex items-start justify-between">
                    <div>
                        <h2 className="text-sm font-semibold text-slate-800">{mode === 'create' ? 'Cadastrar produto' : 'Editar produto'}</h2>
                        <p className="mt-1 text-[10px] text-slate-500">{mode === 'create' ? 'Adicione um item ao catálogo de estoque.' : 'Atualize os dados do produto e o controle de estoque.'}</p>
                    </div>
                    <button type="button" onClick={onClose} className="text-lg leading-none text-slate-400" aria-label="Fechar">×</button>
                </div>
                <div className="grid grid-cols-2 gap-3">
                    <label className="text-[10px] font-medium text-slate-700">SKU<input value={sku} onChange={(event) => setSku(event.target.value)} className="mt-1 w-full rounded border border-slate-200 px-2 py-2 text-xs" required /></label>
                    <label className="text-[10px] font-medium text-slate-700">Categoria<input value={category} onChange={(event) => setCategory(event.target.value)} className="mt-1 w-full rounded border border-slate-200 px-2 py-2 text-xs" /></label>
                    <label className="col-span-2 text-[10px] font-medium text-slate-700">Nome<input value={name} onChange={(event) => setName(event.target.value)} className="mt-1 w-full rounded border border-slate-200 px-2 py-2 text-xs" required /></label>
                    <label className="text-[10px] font-medium text-slate-700">Quantidade<input type="number" min="0" value={quantity} onChange={(event) => setQuantity(event.target.value)} className="mt-1 w-full rounded border border-slate-200 px-2 py-2 text-xs" /></label>
                    <label className="text-[10px] font-medium text-slate-700">Estoque mínimo<input type="number" min="0" value={minimumQuantity} onChange={(event) => setMinimumQuantity(event.target.value)} className="mt-1 w-full rounded border border-slate-200 px-2 py-2 text-xs" /></label>
                    <label className="col-span-2 text-[10px] font-medium text-slate-700">Preço unitário<input type="number" min="0" step="0.01" value={unitPrice} onChange={(event) => setUnitPrice(event.target.value)} className="mt-1 w-full rounded border border-slate-200 px-2 py-2 text-xs" /></label>
                    {error && <p className="col-span-2 rounded border border-rose-200 bg-rose-50 px-2 py-2 text-[10px] text-rose-600">{error}</p>}
                    <div className="col-span-2 flex justify-end gap-2 pt-2">
                        <button type="button" onClick={onClose} className="rounded border border-slate-200 px-3 py-2 text-[10px] text-slate-600">Cancelar</button>
                        <button type="submit" disabled={saving} className="rounded bg-[#007d8b] px-3 py-2 text-[10px] text-white disabled:cursor-not-allowed disabled:opacity-60">{saving ? 'Salvando...' : 'Salvar produto'}</button>
                    </div>
                </div>
            </form>
        </div>
    );
}

export default function Products(): JSX.Element {
    const [products, setProducts] = useState<Product[]>([]);
    const [search, setSearch] = useState('');
    const [categoryFilter, setCategoryFilter] = useState('all');
    const [onlyLowStock, setOnlyLowStock] = useState(false);
    const [loading, setLoading] = useState(true);
    const [error, setError] = useState<string | null>(null);
    const [showForm, setShowForm] = useState(false);
    const [editingProduct, setEditingProduct] = useState<Product | null>(null);

    const loadProducts = useCallback(async (): Promise<void> => {
        setError(null);
        setLoading(true);
        try {
            const nextProducts = await inventoryApi.getProducts();
            setProducts(nextProducts);
        } catch (requestError: unknown) {
            setError(requestError instanceof Error ? requestError.message : 'Não foi possível carregar os produtos.');
        } finally {
            setLoading(false);
        }
    }, []);

    useEffect(() => {
        void loadProducts();
    }, [loadProducts]);

    useEffect(() => {
        const handleInventoryUpdate = (): void => {
            void loadProducts();
        };

        window.addEventListener('inventory:updated', handleInventoryUpdate);
        return () => window.removeEventListener('inventory:updated', handleInventoryUpdate);
    }, [loadProducts]);

    const categories = useMemo(() => {
        const unique = new Set(products
            .map((product) => product.category)
            .filter((category): category is string => Boolean(category && category.trim()))
            .map((category) => category.trim()));

        return Array.from(unique).sort((left, right) => left.localeCompare(right));
    }, [products]);

    const filteredProducts = useMemo(() => products.filter((product) => {
        const normalizedSearch = search.toLowerCase();
        const matchesSearch = product.name.toLowerCase().includes(normalizedSearch)
            || product.sku.toLowerCase().includes(normalizedSearch)
            || (product.category ?? '').toLowerCase().includes(normalizedSearch);
        const matchesCategory = categoryFilter === 'all' || (product.category ?? '').trim().toLowerCase() === categoryFilter.toLowerCase();
        const matchesStock = !onlyLowStock || product.quantity <= product.minimum_quantity;
        return matchesSearch && matchesCategory && matchesStock;
    }), [products, search, categoryFilter, onlyLowStock]);

    async function handleCreate(payload: ProductPayload): Promise<void> {
        await inventoryApi.createProduct(payload);
        notifyInventoryRefresh();
        await loadProducts();
    }

    async function handleUpdate(productId: number, payload: ProductPayload): Promise<void> {
        await inventoryApi.updateProduct(productId, payload);
        notifyInventoryRefresh();
        await loadProducts();
    }

    async function handleDelete(productId: number): Promise<void> {
        const product = products.find((item) => item.id === productId);
        const confirmed = window.confirm(`Deseja excluir o produto ${product?.name ?? 'selecionado'}?`);
        if (!confirmed) {
            return;
        }

        await inventoryApi.deleteProduct(productId);
        notifyInventoryRefresh();
        await loadProducts();
    }

    return (
        <div className="mx-auto max-w-[1120px] space-y-3">
            <div className="flex items-center justify-between">
                <div>
                    <h1 className="text-lg font-semibold text-slate-800">Produtos</h1>
                    <p className="text-xs text-slate-500">Catálogo e níveis atuais do estoque.</p>
                </div>
                <button onClick={() => { setEditingProduct(null); setShowForm(true); }} className="flex items-center gap-1 rounded bg-[#007d8b] px-3 py-2 text-[10px] text-white hover:bg-[#006c78]">
                    <Icon name="plus" size={11} />Novo produto
                </button>
            </div>

            <div className="rounded-lg border border-slate-200 bg-white p-3">
                <div className="flex flex-wrap gap-2">
                    <div className="relative flex-1 min-w-[220px]">
                        <Icon name="search" size={12} className="absolute left-2 top-2 text-slate-400" />
                        <input value={search} onChange={(event) => setSearch(event.target.value)} placeholder="Buscar por SKU, produto ou categoria..." className="w-full rounded border border-slate-200 py-1.5 pl-7 pr-2 text-[10px] outline-none focus:border-[#007d8b]" />
                    </div>
                    <select value={categoryFilter} onChange={(event) => setCategoryFilter(event.target.value)} className="rounded border border-slate-200 px-2 py-1.5 text-[10px] text-slate-600 outline-none focus:border-[#007d8b]">
                        <option value="all">Todas as categorias</option>
                        {categories.map((category) => <option key={category} value={category}>{category}</option>)}
                    </select>
                    <button onClick={() => setOnlyLowStock((current) => !current)} className={`flex items-center gap-1 rounded border px-3 py-1.5 text-[10px] ${onlyLowStock ? 'border-rose-200 bg-rose-50 text-rose-600' : 'border-slate-200 text-slate-600'}`}>
                        <Icon name="filter" size={11} />Estoque baixo
                    </button>
                    <span className="self-center text-[10px] text-slate-500">{filteredProducts.length} de {products.length}</span>
                </div>

                {loading && <p className="py-8 text-center text-xs text-slate-500">Carregando produtos...</p>}
                {error && <p className="py-8 text-center text-xs text-rose-500">{error}</p>}

                {!loading && !error && (
                    <div className="mt-3 overflow-x-auto">
                        <table className="w-full min-w-[780px] text-left text-[10px] text-slate-600">
                            <thead className="border-b border-slate-200 bg-slate-50 text-[9px] text-slate-700">
                                <tr>
                                    <th className="px-3 py-2">SKU</th>
                                    <th className="px-3 py-2">Produto</th>
                                    <th className="px-3 py-2">Categoria</th>
                                    <th className="px-3 py-2 text-right">Quantidade</th>
                                    <th className="px-3 py-2 text-right">Mínimo</th>
                                    <th className="px-3 py-2 text-right">Preço</th>
                                    <th className="px-3 py-2 text-right">Ações</th>
                                </tr>
                            </thead>
                            <tbody>
                                {filteredProducts.length === 0 && (
                                    <tr>
                                        <td colSpan={7} className="px-3 py-8 text-center text-slate-500">Nenhum produto encontrado.</td>
                                    </tr>
                                )}
                                {filteredProducts.map((product) => (
                                    <tr key={product.id} className="border-b border-slate-100 hover:bg-slate-50">
                                        <td className="px-3 py-2 font-mono text-[9px] text-slate-500">{product.sku}</td>
                                        <td className="px-3 py-2">
                                            <div className="font-medium text-slate-700">{product.name}</div>
                                        </td>
                                        <td className="px-3 py-2">{product.category ?? '—'}</td>
                                        <td className={`px-3 py-2 text-right font-medium ${product.quantity <= product.minimum_quantity ? 'text-amber-600' : 'text-slate-700'}`}>{product.quantity}</td>
                                        <td className="px-3 py-2 text-right">{product.minimum_quantity}</td>
                                        <td className="px-3 py-2 text-right">{Number(product.unit_price).toLocaleString('pt-BR', { style: 'currency', currency: 'BRL' })}</td>
                                        <td className="px-3 py-2">
                                            <div className="flex justify-end gap-1">
                                                <button type="button" onClick={() => { setEditingProduct(product); setShowForm(true); }} className="rounded border border-slate-200 px-2 py-1 text-[9px] text-slate-600 hover:bg-slate-50">Editar</button>
                                                <button type="button" onClick={() => void handleDelete(product.id)} className="rounded border border-rose-200 bg-rose-50 px-2 py-1 text-[9px] text-rose-600 hover:bg-rose-100">Excluir</button>
                                            </div>
                                        </td>
                                    </tr>
                                ))}
                            </tbody>
                        </table>
                    </div>
                )}
            </div>

            {showForm && (
                <ProductForm
                    mode={editingProduct ? 'edit' : 'create'}
                    initialProduct={editingProduct}
                    onClose={() => { setShowForm(false); setEditingProduct(null); }}
                    onSubmit={async (payload) => {
                        if (editingProduct) {
                            await handleUpdate(editingProduct.id, payload);
                        } else {
                            await handleCreate(payload);
                        }
                        setShowForm(false);
                        setEditingProduct(null);
                    }}
                />
            )}
        </div>
    );
}
