import { useMemo, useState, type JSX } from 'react';
import Icon from './Icon';
import type { Movement } from '../services/api';

interface UserTableProps {
    movements: Movement[];
    loading: boolean;
    error: string | null;
    onNewMovement: () => void;
    onDeleteMovement: (movementId: number) => Promise<void>;
    readOnly?: boolean;
}

function formatDate(value: string): string {
    return new Intl.DateTimeFormat('pt-BR', { dateStyle: 'short', timeStyle: 'short' }).format(new Date(value));
}

export default function UserTable({ movements, loading, error, onNewMovement, onDeleteMovement, readOnly = false }: UserTableProps): JSX.Element {
    const [actionError, setActionError] = useState<string | null>(null);
    const [deletingMovementId, setDeletingMovementId] = useState<number | null>(null);
    const [search, setSearch] = useState('');
    const [typeFilter, setTypeFilter] = useState<'all' | Movement['type']>('all');
    const filteredMovements = useMemo(() => movements.filter((movement) => {
        const matchesSearch = `${movement.sku} ${movement.product_name}`.toLowerCase().includes(search.trim().toLowerCase());
        return matchesSearch && (typeFilter === 'all' || movement.type === typeFilter);
    }), [movements, search, typeFilter]);

    async function deleteMovement(movement: Movement): Promise<void> {
        const description = movement.type === 'entrada' ? 'entrada' : 'saída';
        if (!window.confirm(`Deseja excluir esta ${description} de ${movement.quantity} unidade(s) de “${movement.product_name}”? O saldo do estoque será ajustado.`)) return;

        setActionError(null);
        setDeletingMovementId(movement.id);
        try {
            await onDeleteMovement(movement.id);
        } catch (deleteError: unknown) {
            setActionError(deleteError instanceof Error ? deleteError.message : 'Não foi possível excluir a movimentação.');
        } finally {
            setDeletingMovementId(null);
        }
    }

    return (
        <div className="overflow-hidden rounded-lg border border-slate-200 bg-white">
            <div className="flex flex-col gap-2 border-b border-slate-200 px-3 py-2 sm:flex-row sm:items-center sm:justify-between">
                <div><h2 className="text-sm font-semibold text-slate-800">Movimentações recentes</h2><p className="text-xs text-slate-500">Entradas e saídas registradas nos últimos 7 dias</p></div>
                {!readOnly && <button onClick={onNewMovement} className="flex min-h-10 items-center justify-center gap-1 self-start rounded bg-[#007d8b] px-3 py-2 text-xs text-white hover:bg-[#006c78] sm:self-auto"><Icon name="plus" size={14} />Registrar nova movimentação</button>}
            </div>
            <div className="flex flex-wrap items-center gap-2 border-b border-slate-100 px-3 py-2"><div className="relative min-w-0 flex-1 sm:flex-none"><Icon name="search" size={14} className="absolute left-2 top-2 text-slate-400" /><input value={search} onChange={(event) => setSearch(event.target.value)} placeholder="Filtrar por SKU ou produto..." className="w-full rounded border border-slate-200 py-2 pl-7 pr-2 text-xs outline-none sm:w-56" /></div><select aria-label="Filtrar movimentações por tipo" value={typeFilter} onChange={(event) => { const value = event.target.value; setTypeFilter(value === 'entrada' || value === 'saida' ? value : 'all'); }} className="min-h-9 shrink-0 rounded border border-slate-200 px-3 text-xs text-slate-600"><option value="all">Todos os tipos</option><option value="entrada">Entradas</option><option value="saida">Saídas</option></select><span className="ml-auto self-center text-[11px] text-slate-500">{filteredMovements.length} registros</span></div>
            {actionError && <p role="alert" className="border-b border-rose-100 bg-rose-50 px-3 py-2 text-xs text-rose-600">{actionError}</p>}
            <div className="overflow-x-auto">
            <table className="w-full min-w-[780px] text-left text-xs text-slate-600">
                <thead className="border-b border-slate-200 bg-slate-50 text-[11px] text-slate-700"><tr><th className="px-3 py-3">Código SKU</th><th className="px-3 py-3">Produto</th><th className="px-3 py-3">Tipo</th><th className="px-3 py-3">Qtd.</th><th className="px-3 py-3">Data</th><th className="px-3 py-3">Rotatividade</th>{!readOnly && <th className="px-3 py-3 text-right">Ações</th>}</tr></thead>
                <tbody className="divide-y divide-slate-100">
                    {loading && <tr><td colSpan={readOnly ? 6 : 7} className="px-3 py-6 text-center text-slate-500">Carregando movimentações...</td></tr>}
                    {!loading && error && <tr><td colSpan={readOnly ? 6 : 7} className="px-3 py-6 text-center text-rose-500">{error}</td></tr>}
                    {!loading && !error && movements.length === 0 && <tr><td colSpan={readOnly ? 6 : 7} className="px-3 py-6 text-center text-slate-500">Nenhuma movimentação cadastrada nos últimos 7 dias.</td></tr>}
                    {!loading && !error && movements.length > 0 && filteredMovements.length === 0 && <tr><td colSpan={readOnly ? 6 : 7} className="px-3 py-6 text-center text-slate-500">Nenhuma movimentação corresponde aos filtros.</td></tr>}
                    {!loading && !error && filteredMovements.map((movement) => {
                        const isEntry = movement.type === 'entrada';
                        return <tr key={movement.id} className="hover:bg-slate-50"><td className="px-3 py-2 font-mono text-[11px] text-slate-500">{movement.sku}</td><td className="px-3 py-2 font-medium text-slate-800">{movement.product_name}{movement.notes && <span className="mt-0.5 block text-[11px] font-normal text-slate-400">{movement.notes}</span>}</td><td className="px-3 py-2"><span className={`rounded-full px-2 py-1 text-[11px] ${isEntry ? 'bg-cyan-50 text-[#007d8b]' : 'bg-orange-50 text-[#d98900]'}`}>{isEntry ? '↙ Entrada' : '↗ Saída'}</span></td><td className="px-3 py-2 text-right font-medium">{isEntry ? '+' : '-'}{movement.quantity}</td><td className="px-3 py-2 text-slate-500">{formatDate(movement.occurred_at)}</td><td className="px-3 py-2"><span className="rounded-full bg-slate-100 px-2 py-1 text-[11px] text-slate-500">—</span></td>{!readOnly && <td className="px-3 py-2 text-right"><button type="button" onClick={() => void deleteMovement(movement)} disabled={deletingMovementId !== null} className="rounded border border-rose-200 bg-rose-50 px-3 py-1.5 text-[11px] text-rose-600 disabled:cursor-wait disabled:opacity-60">{deletingMovementId === movement.id ? 'Excluindo...' : 'Excluir'}</button></td>}</tr>;
                    })}
                    </tbody>
                </table>
            </div>
        </div>
    );
}
