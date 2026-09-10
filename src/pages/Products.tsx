import { useEffect, useMemo, useState, type FormEvent, type JSX } from 'react';
import Icon from '../components/Icon';
import { inventoryApi, type Product } from '../services/api';

interface ProductFormProps {
    onClose: () => void;
    onSubmit: (payload: { sku: string; name: string; category?: string; quantity?: number; unitPrice?: number; minimumQuantity?: number }) => Promise<void>;
}

function ProductForm({ onClose, onSubmit }: ProductFormProps): JSX.Element {
    const [sku, setSku] = useState('');
    const [name, setName] = useState('');
    const [category, setCategory] = useState('');
    const [quantity, setQuantity] = useState('0');
    const [unitPrice, setUnitPrice] = useState('0');
    const [minimumQuantity, setMinimumQuantity] = useState('0');
    const [error, setError] = useState<string | null>(null);
    const [saving, setSaving] = useState(false);

    async function handleSubmit(event: FormEvent<HTMLFormElement>): Promise<void> {
        event.preventDefault();
        setError(null);
        setSaving(true);
        try {
            await onSubmit({ sku, name, category, quantity: Number(quantity), unitPrice: Number(unitPrice), minimumQuantity: Number(minimumQuantity) });
            onClose();
        } catch (submitError: unknown) {
            setError(submitError instanceof Error ? submitError.message : 'Não foi possível cadastrar o produto.');
        } finally {
            setSaving(false);
        }
    }

    return <div className="fixed inset-0 z-10 flex items-center justify-center bg-slate-950/40 p-4"><form onSubmit={handleSubmit} className="w-full max-w-lg rounded-xl bg-white p-5 shadow-xl"><div className="mb-4 flex items-start justify-between"><div><h2 className="text-sm font-semibold text-slate-800">Cadastrar produto</h2><p className="mt-1 text-[10px] text-slate-500">Adicione um item ao catálogo de estoque.</p></div><button type="button" onClick={onClose} className="text-lg leading-none text-slate-400">×</button></div><div className="grid grid-cols-2 gap-3"><label className="text-[10px] font-medium text-slate-700">SKU<input value={sku} onChange={(event) => setSku(event.target.value)} className="mt-1 w-full rounded border border-slate-200 px-2 py-2 text-xs" required /></label><label className="text-[10px] font-medium text-slate-700">Categoria<input value={category} onChange={(event) => setCategory(event.target.value)} className="mt-1 w-full rounded border border-slate-200 px-2 py-2 text-xs" /></label><label className="col-span-2 text-[10px] font-medium text-slate-700">Nome<input value={name} onChange={(event) => setName(event.target.value)} className="mt-1 w-full rounded border border-slate-200 px-2 py-2 text-xs" required /></label><label className="text-[10px] font-medium text-slate-700">Quantidade inicial<input type="number" min="0" value={quantity} onChange={(event) => setQuantity(event.target.value)} className="mt-1 w-full rounded border border-slate-200 px-2 py-2 text-xs" /></label><label className="text-[10px] font-medium text-slate-700">Estoque mínimo<input type="number" min="0" value={minimumQuantity} onChange={(event) => setMinimumQuantity(event.target.value)} className="mt-1 w-full rounded border border-slate-200 px-2 py-2 text-xs" /></label><label className="col-span-2 text-[10px] font-medium text-slate-700">Preço unitário<input type="number" min="0" step="0.01" value={unitPrice} onChange={(event) => setUnitPrice(event.target.value)} className="mt-1 w-full rounded border border-slate-200 px-2 py-2 text-xs" /></label></div>{error && <p className="mt-3 rounded bg-rose-50 p-2 text-[10px] text-rose-600">{error}</p>}<div className="mt-4 flex justify-end gap-2"><button type="button" onClick={onClose} className="rounded border border-slate-200 px-3 py-2 text-[10px] text-slate-600">Cancelar</button><button type="submit" disabled={saving} className="rounded bg-[#007d8b] px-3 py-2 text-[10px] text-white disabled:opacity-60">{saving ? 'Salvando...' : 'Cadastrar produto'}</button></div></form></div>;
}

export default function Products(): JSX.Element {
    const [products, setProducts] = useState<Product[]>([]);
    const [search, setSearch] = useState('');
    const [onlyLowStock, setOnlyLowStock] = useState(false);
    const [loading, setLoading] = useState(true);
    const [error, setError] = useState<string | null>(null);
    const [showForm, setShowForm] = useState(false);

    useEffect(() => {
        inventoryApi.getProducts()
            .then(setProducts)
            .catch((requestError: unknown) => setError(requestError instanceof Error ? requestError.message : 'Não foi possível carregar os produtos.'))
            .finally(() => setLoading(false));
    }, []);

    const filteredProducts = useMemo(() => products.filter((product) => {
        const normalizedSearch = search.toLowerCase();
        const matchesSearch = product.name.toLowerCase().includes(normalizedSearch) || product.sku.toLowerCase().includes(normalizedSearch) || (product.category ?? '').toLowerCase().includes(normalizedSearch);
        const matchesStock = !onlyLowStock || product.quantity <= product.minimum_quantity;
        return matchesSearch && matchesStock;
    }), [products, search, onlyLowStock]);

    async function handleCreate(payload: { sku: string; name: string; category?: string; quantity?: number; unitPrice?: number; minimumQuantity?: number }): Promise<void> {
        const product = await inventoryApi.createProduct(payload);
        setProducts((current) => [...current, product].sort((first, second) => first.name.localeCompare(second.name)));
    }

    return <div className="mx-auto max-w-[1120px] space-y-3"><div className="flex items-center justify-between"><div><h1 className="text-lg font-semibold text-slate-800">Produtos</h1><p className="text-xs text-slate-500">Catálogo e níveis atuais do estoque.</p></div><button onClick={() => setShowForm(true)} className="flex items-center gap-1 rounded bg-[#007d8b] px-3 py-2 text-[10px] text-white hover:bg-[#006c78]"><Icon name="plus" size={11} />Novo produto</button></div><div className="rounded-lg border border-slate-200 bg-white p-3"><div className="flex flex-wrap gap-2"><div className="relative flex-1 min-w-[220px]"><Icon name="search" size={12} className="absolute left-2 top-2 text-slate-400" /><input value={search} onChange={(event) => setSearch(event.target.value)} placeholder="Buscar por SKU, produto ou categoria..." className="w-full rounded border border-slate-200 py-1.5 pl-7 pr-2 text-[10px] outline-none focus:border-[#007d8b]" /></div><button onClick={() => setOnlyLowStock((current) => !current)} className={`flex items-center gap-1 rounded border px-3 py-1.5 text-[10px] ${onlyLowStock ? 'border-rose-200 bg-rose-50 text-rose-600' : 'border-slate-200 text-slate-600'}`}><Icon name="filter" size={11} />Estoque baixo</button><span className="self-center text-[10px] text-slate-500">{filteredProducts.length} de {products.length}</span></div>{loading && <p className="py-8 text-center text-xs text-slate-500">Carregando produtos...</p>}{error && <p className="py-8 text-center text-xs text-rose-500">{error}</p>}{!loading && !error && <div className="mt-3 overflow-x-auto"><table className="w-full min-w-[680px] text-left text-[10px] text-slate-600"><thead className="border-b border-slate-200 bg-slate-50 text-[9px] text-slate-700"><tr><th className="px-3 py-2">SKU</th><th className="px-3 py-2">Produto</th><th className="px-3 py-2">Categoria</th><th className="px-3 py-2 text-right">Quantidade</th><th className="px-3 py-2 text-right">Mínimo</th><th className="px-3 py-2 text-right">Preço</th><th className="px-3 py-2">Status</th></tr></thead><tbody className="divide-y divide-slate-100">{filteredProducts.map((product) => { const lowStock = product.quantity <= product.minimum_quantity; return <tr key={product.id} className="hover:bg-slate-50"><td className="px-3 py-2 font-mono text-[9px] text-slate-500">{product.sku}</td><td className="px-3 py-2 font-medium text-slate-800">{product.name}</td><td className="px-3 py-2">{product.category ?? '—'}</td><td className="px-3 py-2 text-right font-medium">{product.quantity}</td><td className="px-3 py-2 text-right">{product.minimum_quantity}</td><td className="px-3 py-2 text-right">{Number(product.unit_price).toLocaleString('pt-BR', { style: 'currency', currency: 'BRL' })}</td><td className="px-3 py-2"><span className={`rounded-full px-2 py-0.5 text-[9px] ${lowStock ? 'bg-rose-50 text-rose-600' : 'bg-cyan-50 text-[#007d8b]'}`}>{lowStock ? 'Estoque baixo' : 'Normal'}</span></td></tr>; })}</tbody></table>{filteredProducts.length === 0 && <p className="py-8 text-center text-xs text-slate-500">Nenhum produto encontrado.</p>}</div>}</div>{showForm && <ProductForm onClose={() => setShowForm(false)} onSubmit={handleCreate} />}</div>;
}