import { useCallback, useEffect, useMemo, useState, type FormEvent, type JSX } from 'react';
import Icon from '../components/Icon';
import { inventoryApi, notifyInventoryRefresh, type Product, type ProductPayload } from '../services/api';

interface ProductFormProps {
    mode: 'create' | 'edit';
    initialProduct?: Product | null;
    onClose: () => void;
    onSubmit: (payload: ProductPayload) => Promise<void>;
}

const emptyPayload: ProductPayload = {
    secao: '',
    produto: '',
    modelo: '',
    cor: '',
    tamanho: '',
    quantity: 0,
    unitPrice: 0,
    unidade: 'un',
    tecidoComposicao: '',
    item: '',
    medida: '',
    observacoes: '',
};

const currencyFormatter = new Intl.NumberFormat('pt-BR', {
    style: 'currency',
    currency: 'BRL',
});

function formatPrice(value: string | undefined): string {
    const price = Number(value);
    return Number.isFinite(price) && price > 0 ? currencyFormatter.format(price) : '—';
}

function ProductForm({ mode, initialProduct, onClose, onSubmit }: ProductFormProps): JSX.Element {
    const [form, setForm] = useState<ProductPayload>(emptyPayload);
    const [error, setError] = useState<string | null>(null);
    const [saving, setSaving] = useState(false);

    useEffect(() => {
        setForm(initialProduct ? {
            secao: initialProduct.secao ?? '',
            produto: initialProduct.produto,
            modelo: initialProduct.modelo ?? '',
            cor: initialProduct.cor ?? '',
            tamanho: initialProduct.tamanho ?? '',
            quantity: initialProduct.quantity,
            unitPrice: Number(initialProduct.unit_price ?? 0),
            unidade: initialProduct.unidade,
            tecidoComposicao: initialProduct.tecido_composicao ?? '',
            item: initialProduct.item ?? '',
            medida: initialProduct.medida ?? '',
            observacoes: initialProduct.observacoes ?? '',
        } : emptyPayload);
    }, [initialProduct]);

    function updateField(field: keyof ProductPayload, value: string | number): void {
        setForm((current) => ({ ...current, [field]: value }));
    }

    async function handleSubmit(event: FormEvent<HTMLFormElement>): Promise<void> {
        event.preventDefault();
        setError(null);
        setSaving(true);
        try {
            await onSubmit(form);
            onClose();
        } catch (submitError: unknown) {
            setError(submitError instanceof Error ? submitError.message : 'Não foi possível salvar o produto.');
        } finally {
            setSaving(false);
        }
    }

    const field = (name: keyof ProductPayload, label: string, wide = false): JSX.Element => (
        <label className={`${wide ? 'col-span-2' : ''} text-sm font-medium text-slate-700`}>
            {label}
            <input
                value={String(form[name] ?? '')}
                onChange={(event) => updateField(name, event.target.value)}
                className="mt-1 w-full rounded border border-slate-200 px-3 py-2.5 text-sm outline-none focus:border-[#007d8b]"
            />
        </label>
    );

    return (
        <div className="fixed inset-0 z-40 flex items-center justify-center overflow-y-auto bg-slate-950/40 p-4">
            <form onSubmit={handleSubmit} className="my-4 w-full max-w-2xl rounded-xl bg-white p-5 shadow-xl sm:p-6">
                <div className="mb-4 flex items-start justify-between">
                    <div>
                        <h2 className="text-base font-semibold text-slate-800">
                            {mode === 'create' ? 'Cadastrar item' : 'Editar item'}
                        </h2>
                        <p className="mt-1 text-xs text-slate-500">Ficha organizada do estoque.</p>
                    </div>
                    <button type="button" onClick={onClose} className="text-lg leading-none text-slate-400" aria-label="Fechar">×</button>
                </div>
                <div className="grid grid-cols-2 gap-3">
                    {field('secao', 'Seção')}
                    {field('produto', 'Produto', true)}
                    {field('modelo', 'Modelo')}
                    {field('cor', 'Cor')}
                    {field('tamanho', 'Tamanho')}
                    <label className="text-sm font-medium text-slate-700">
                        Quantidade
                        <input
                            type="number"
                            min="0"
                            value={form.quantity ?? 0}
                            onChange={(event) => updateField('quantity', Number(event.target.value))}
                            className="mt-1 w-full rounded border border-slate-200 px-3 py-2.5 text-sm outline-none focus:border-[#007d8b]"
                        />
                    </label>
                    <label className="text-sm font-medium text-slate-700">
                        Preço unitário (R$)
                        <input
                            type="number"
                            min="0"
                            step="0.01"
                            value={form.unitPrice ?? 0}
                            onChange={(event) => updateField('unitPrice', Number(event.target.value))}
                            className="mt-1 w-full rounded border border-slate-200 px-3 py-2.5 text-sm outline-none focus:border-[#007d8b]"
                        />
                    </label>
                    {field('unidade', 'Unidade')}
                    {field('tecidoComposicao', 'Tecido / composição')}
                    {field('item', 'Item')}
                    {field('medida', 'Medida')}
                    {field('observacoes', 'Observações', true)}
                    {error && <p className="col-span-2 rounded border border-rose-200 bg-rose-50 px-3 py-2.5 text-xs text-rose-600">{error}</p>}
                    <div className="col-span-2 flex justify-end gap-2 pt-2">
                        <button type="button" onClick={onClose} className="rounded border border-slate-200 px-4 py-2.5 text-xs text-slate-600">Cancelar</button>
                        <button type="submit" disabled={saving} className="rounded bg-[#007d8b] px-4 py-2.5 text-xs text-white disabled:opacity-60">
                            {saving ? 'Salvando...' : 'Salvar item'}
                        </button>
                    </div>
                </div>
            </form>
        </div>
    );
}

export default function Products(): JSX.Element {
    const [products, setProducts] = useState<Product[]>([]);
    const [search, setSearch] = useState('');
    const [sectionFilter, setSectionFilter] = useState('all');
    const [onlyEmpty, setOnlyEmpty] = useState(false);
    const [loading, setLoading] = useState(true);
    const [error, setError] = useState<string | null>(null);
    const [actionError, setActionError] = useState<string | null>(null);
    const [deletingProductId, setDeletingProductId] = useState<number | null>(null);
    const [showForm, setShowForm] = useState(false);
    const [editingProduct, setEditingProduct] = useState<Product | null>(null);

    const loadProducts = useCallback(async (): Promise<void> => {
        setLoading(true);
        setError(null);
        try {
            setProducts(await inventoryApi.getProducts());
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
        const handleUpdate = (): void => { void loadProducts(); };
        window.addEventListener('inventory:updated', handleUpdate);
        return () => window.removeEventListener('inventory:updated', handleUpdate);
    }, [loadProducts]);

    const sections = useMemo(
        () => Array.from(new Set(products.map((product) => product.secao).filter((value): value is string => Boolean(value))))
            .sort((a, b) => a.localeCompare(b)),
        [products],
    );
    const filteredProducts = useMemo(() => products.filter((product) => {
        const searchable = [
            product.sku, product.secao, product.produto, product.modelo, product.cor,
            product.tamanho, product.tecido_composicao, product.item, product.medida, product.observacoes,
        ].join(' ').toLowerCase();
        return searchable.includes(search.toLowerCase())
            && (sectionFilter === 'all' || product.secao === sectionFilter)
            && (!onlyEmpty || product.quantity === 0);
    }), [products, search, sectionFilter, onlyEmpty]);

    async function saveProduct(payload: ProductPayload): Promise<void> {
        if (editingProduct) await inventoryApi.updateProduct(editingProduct.id, payload);
        else await inventoryApi.createProduct(payload);
        notifyInventoryRefresh();
        await loadProducts();
    }

    async function deleteProduct(product: Product): Promise<void> {
        if (!window.confirm(`Deseja excluir o item “${product.produto}”?`)) return;
        setActionError(null);
        setDeletingProductId(product.id);
        try {
            await inventoryApi.deleteProduct(product.id);
            notifyInventoryRefresh();
            await loadProducts();
        } catch (deleteError: unknown) {
            setActionError(deleteError instanceof Error ? deleteError.message : 'Não foi possível excluir o produto.');
        } finally {
            setDeletingProductId(null);
        }
    }

    return (
        <div className="mx-auto w-full max-w-[1200px] space-y-3 min-[1400px]:max-w-none">
            <div className="flex flex-col gap-2 sm:flex-row sm:items-center sm:justify-between">
                <div>
                    <h1 className="text-xl font-semibold text-slate-800">Estoque organizado</h1>
                    <p className="text-sm text-slate-500">Catálogo por código (SKU), seção e características do item.</p>
                </div>
                <button onClick={() => { setEditingProduct(null); setShowForm(true); }} className="flex min-h-10 items-center justify-center gap-1 self-start rounded bg-[#007d8b] px-4 py-2.5 text-xs text-white hover:bg-[#006c78] sm:self-auto">
                    <Icon name="plus" size={11} />Novo item
                </button>
            </div>

            <div className="rounded-lg border border-slate-200 bg-white p-3">
                <div className="flex flex-wrap gap-2">
                    <div className="relative min-w-[230px] flex-1">
                        <Icon name="search" size={12} className="absolute left-2 top-2 text-slate-400" />
                        <input value={search} onChange={(event) => setSearch(event.target.value)} placeholder="Buscar em todos os campos..." className="w-full rounded border border-slate-200 py-2 pl-7 pr-2 text-xs outline-none focus:border-[#007d8b]" />
                    </div>
                    <select value={sectionFilter} onChange={(event) => setSectionFilter(event.target.value)} className="max-w-[220px] rounded border border-slate-200 px-3 py-2 text-xs text-slate-600">
                        <option value="all">Todas as seções</option>
                        {sections.map((section) => <option key={section} value={section}>{section}</option>)}
                    </select>
                    <button onClick={() => setOnlyEmpty((current) => !current)} className={`flex items-center gap-1 rounded border px-3 py-2 text-xs ${onlyEmpty ? 'border-rose-200 bg-rose-50 text-rose-600' : 'border-slate-200 text-slate-600'}`}>
                        <Icon name="filter" size={11} />Sem estoque
                    </button>
                    <span className="self-center text-xs text-slate-500">{filteredProducts.length} de {products.length}</span>
                </div>

                {actionError && <p role="alert" className="mt-3 rounded border border-rose-200 bg-rose-50 px-3 py-2 text-xs text-rose-600">{actionError}</p>}
                {loading && <p className="py-8 text-center text-xs text-slate-500">Carregando estoque...</p>}
                {error && <p className="py-8 text-center text-xs text-rose-500">{error}</p>}
                {!loading && !error && (
                    <div className="mt-3 overflow-x-auto">
                        <table className="w-full min-w-[1380px] text-left text-xs text-slate-600">
                            <thead className="border-b border-slate-200 bg-slate-50 text-[11px] text-slate-700">
                                <tr>
                                    <th className="px-3 py-2">Código / Seção</th>
                                    <th className="px-3 py-2">Produto</th>
                                    <th className="px-3 py-2">Modelo</th>
                                    <th className="px-3 py-2">Cor</th>
                                    <th className="px-3 py-2">Tamanho</th>
                                    <th className="px-3 py-2 text-right">Quantidade</th>
                                    <th className="px-3 py-2 text-right">Preço unitário</th>
                                    <th className="px-3 py-2">Un.</th>
                                    <th className="px-3 py-2">Composição</th>
                                    <th className="px-3 py-2 text-right">Ações</th>
                                </tr>
                            </thead>
                            <tbody>
                                {filteredProducts.length === 0 && <tr><td colSpan={11} className="px-3 py-8 text-center text-slate-500">Nenhum item encontrado.</td></tr>}
                                {filteredProducts.map((product) => (
                                    <tr key={product.id} className="border-b border-slate-100 align-top hover:bg-slate-50">
                                        <td className="px-3 py-2">
                                            <div className="font-medium text-slate-700">{product.sku}</div>
                                            <div className="mt-0.5 max-w-[150px] text-[11px] text-slate-400">{product.secao || 'Sem seção'}</div>
                                        </td>
                                        <td className="max-w-[230px] px-3 py-2 font-medium text-slate-700">{product.produto}</td>
                                        <td className="max-w-[180px] px-3 py-2">{product.modelo || '—'}</td>
                                        <td className="px-3 py-2">{product.cor || '—'}</td>
                                        <td className="max-w-[170px] px-3 py-2">{product.tamanho || '—'}</td>
                                        <td className={`px-3 py-2 text-right font-semibold ${product.quantity === 0 ? 'text-rose-600' : 'text-slate-700'}`}>{product.quantity}</td>
                                        <td className="px-3 py-2 text-right font-medium text-slate-700">{formatPrice(product.unit_price)}</td>
                                        <td className="px-3 py-2">{product.unidade}</td>
                                        <td className="max-w-[180px] px-3 py-2">{product.tecido_composicao || product.medida || '—'}</td>
                                        <td className="px-3 py-2">
                                            <div className="flex justify-end gap-1">
                                                <button type="button" onClick={() => { setEditingProduct(product); setShowForm(true); }} className="rounded border border-slate-200 px-3 py-1.5 text-[11px] text-slate-600">Editar</button>
                                                <button type="button" onClick={() => void deleteProduct(product)} disabled={deletingProductId !== null} className="rounded border border-rose-200 bg-rose-50 px-3 py-1.5 text-[11px] text-rose-600 disabled:cursor-wait disabled:opacity-60">
                                                    {deletingProductId === product.id ? 'Excluindo...' : 'Excluir'}
                                                </button>
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
                    onSubmit={saveProduct}
                />
            )}
        </div>
    );
}