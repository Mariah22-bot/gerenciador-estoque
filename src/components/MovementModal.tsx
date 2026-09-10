import { useState, type FormEvent, type JSX } from 'react';
import type { Product } from '../services/api';

interface MovementModalProps {
    products: Product[];
    onClose: () => void;
    onSubmit: (payload: { productId: number; type: 'entrada' | 'saida'; quantity: number; notes?: string }) => Promise<void>;
}

export default function MovementModal({ products, onClose, onSubmit }: MovementModalProps): JSX.Element {
    const [productId, setProductId] = useState(products[0]?.id.toString() ?? '');
    const [type, setType] = useState<'entrada' | 'saida'>('entrada');
    const [quantity, setQuantity] = useState('1');
    const [notes, setNotes] = useState('');
    const [submitting, setSubmitting] = useState(false);
    const [error, setError] = useState<string | null>(null);

    async function handleSubmit(event: FormEvent<HTMLFormElement>): Promise<void> {
        event.preventDefault();
        setError(null);
        setSubmitting(true);

        try {
            await onSubmit({ productId: Number(productId), type, quantity: Number(quantity), notes: notes.trim() || undefined });
            onClose();
        } catch (submitError: unknown) {
            setError(submitError instanceof Error ? submitError.message : 'Não foi possível registrar a movimentação.');
        } finally {
            setSubmitting(false);
        }
    }

    return (
        <div className="fixed inset-0 z-10 flex items-center justify-center bg-slate-950/40 p-4" role="dialog" aria-modal="true" aria-labelledby="movement-title">
            <form onSubmit={handleSubmit} className="w-full max-w-md rounded-xl bg-white p-5 shadow-xl">
                <div className="mb-4 flex items-start justify-between"><div><h2 id="movement-title" className="text-sm font-semibold text-slate-800">Registrar movimentação</h2><p className="mt-1 text-[10px] text-slate-500">Atualize o saldo do estoque com uma entrada ou saída.</p></div><button type="button" onClick={onClose} className="text-lg leading-none text-slate-400 hover:text-slate-700" aria-label="Fechar">×</button></div>
                {products.length === 0 ? <p className="rounded bg-amber-50 p-3 text-xs text-amber-700">Cadastre ou importe um produto antes de registrar uma movimentação.</p> : <div className="space-y-3">
                    <label className="block text-[10px] font-medium text-slate-700">Produto<select value={productId} onChange={(event) => setProductId(event.target.value)} className="mt-1 w-full rounded border border-slate-200 px-2 py-2 text-xs outline-none focus:border-[#007d8b]">{products.map((product) => <option key={product.id} value={product.id}>{product.sku} — {product.name} (saldo: {product.quantity})</option>)}</select></label>
                    <div className="grid grid-cols-2 gap-3"><label className="block text-[10px] font-medium text-slate-700">Tipo<select value={type} onChange={(event) => setType(event.target.value as 'entrada' | 'saida')} className="mt-1 w-full rounded border border-slate-200 px-2 py-2 text-xs outline-none focus:border-[#007d8b]"><option value="entrada">Entrada</option><option value="saida">Saída</option></select></label><label className="block text-[10px] font-medium text-slate-700">Quantidade<input type="number" min="1" step="1" value={quantity} onChange={(event) => setQuantity(event.target.value)} className="mt-1 w-full rounded border border-slate-200 px-2 py-2 text-xs outline-none focus:border-[#007d8b]" required /></label></div>
                    <label className="block text-[10px] font-medium text-slate-700">Observação<textarea value={notes} onChange={(event) => setNotes(event.target.value)} rows={2} className="mt-1 w-full resize-none rounded border border-slate-200 px-2 py-2 text-xs outline-none focus:border-[#007d8b]" placeholder="Opcional" /></label>
                    {error && <p className="rounded bg-rose-50 p-2 text-[10px] text-rose-600">{error}</p>}
                    <div className="flex justify-end gap-2 pt-2"><button type="button" onClick={onClose} className="rounded border border-slate-200 px-3 py-2 text-[10px] text-slate-600">Cancelar</button><button type="submit" disabled={submitting} className="rounded bg-[#007d8b] px-3 py-2 text-[10px] text-white disabled:cursor-not-allowed disabled:opacity-60">{submitting ? 'Salvando...' : 'Registrar movimentação'}</button></div>
                </div>}
            </form>
        </div>
    );
}