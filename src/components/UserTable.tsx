import { useState, type JSX } from 'react';
import Icon from './Icon';
import type { Movement } from '../services/api';

interface UserTableProps {
    movements: Movement[];
    loading: boolean;
    error: string | null;
    onNewMovement: () => void;
    onDeleteMovement: (movementId: number) => Promise<void>;
}

function formatDate(value: string): string {
    return new Intl.DateTimeFormat('pt-BR', { dateStyle: 'short', timeStyle: 'short' }).format(new Date(value));
}

export default function UserTable({ movements, loading, error, onNewMovement, onDeleteMovement }: UserTableProps): JSX.Element {
    const [actionError, setActionError] = useState<string | null>(null);
    const [deletingMovementId, setDeletingMovementId] = useState<number | null>(null);

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
            <div className="flex items-center justify-between border-b border-slate-200 px-3 py-2">
                <div><h2 className="text-xs font-semibold text-slate-800">Movimentações recentes</h2><p className="text-[9px] text-slate-500">Entradas e saídas registradas nos últimos 7 dias</p></div>
                <button onClick={onNewMovement} className="flex items-center gap-1 rounded bg-[#007d8b] px-2 py-1 text-[9px] text-white hover:bg-[#006c78]"><Icon name="plus" size={10} />Registrar nova movimentação</button>
            </div>
            <div className="flex gap-1 border-b border-slate-100 px-3 py-2"><div className="relative"><Icon name="search" size={11} className="absolute left-2 top-1.5 text-slate-400" /><input placeholder="Filtrar por SKU ou produto..." className="w-48 rounded border border-slate-200 py-1 pl-6 pr-2 text-[9px] outline-none" /></div><button className="flex items-center gap-1 rounded border border-slate-200 px-2 text-[9px] text-slate-600"><Icon name="filter" size={10} />Todos os tipos</button><span className="ml-auto self-center text-[8px] text-slate-500">{movements.length} registros</span></div>
            {actionError && <p role="alert" className="border-b border-rose-100 bg-rose-50 px-3 py-2 text-[10px] text-rose-600">{actionError}</p>}
            <div className="overflow-x-auto">
            <table className="w-full min-w-[650px] text-left text-[9px] text-slate-600">
                <thead className="border-b border-slate-200 bg-slate-50 text-[8px] text-slate-700"><tr><th className="px-3 py-2">Código SKU</th><th className="px-3 py-2">Produto</th><th className="px-3 py-2">Tipo</th><th className="px-3 py-2">Qtd.</th><th className="px-3 py-2">Data</th><th className="px-3 py-2">Rotatividade</th><th className="px-3 py-2 text-right">Ações</th></tr></thead>
                <tbody className="divide-y divide-slate-100">
                    {loading && <tr><td colSpan={7} className="px-3 py-6 text-center text-slate-500">Carregando movimentações...</td></tr>}
                    {!loading && error && <tr><td colSpan={7} className="px-3 py-6 text-center text-rose-500">{error}</td></tr>}
                    {!loading && !error && movements.length === 0 && <tr><td colSpan={7} className="px-3 py-6 text-center text-slate-500">Nenhuma movimentação cadastrada.</td></tr>}
                    {!loading && !error && movements.map((movement) => {
                        const isEntry = movement.type === 'entrada';
                        return <tr key={movement.id} className="hover:bg-slate-50"><td className="px-3 py-1.5 font-mono text-[8px] text-slate-500">{movement.sku}</td><td className="px-3 py-1.5 font-medium text-slate-800">{movement.product_name}</td><td className="px-3 py-1.5"><span className={`rounded-full px-1.5 py-0.5 text-[8px] ${isEntry ? 'bg-cyan-50 text-[#007d8b]' : 'bg-orange-50 text-[#d98900]'}`}>{isEntry ? '↙ Entrada' : '↗ Saída'}</span></td><td className="px-3 py-1.5 text-right font-medium">{isEntry ? '+' : '-'}{movement.quantity}</td><td className="px-3 py-1.5 text-slate-500">{formatDate(movement.occurred_at)}</td><td className="px-3 py-1.5"><span className="rounded-full bg-slate-100 px-2 py-0.5 text-[8px] text-slate-500">—</span></td><td className="px-3 py-1.5 text-right"><button type="button" onClick={() => void deleteMovement(movement)} disabled={deletingMovementId !== null} className="rounded border border-rose-200 bg-rose-50 px-2 py-1 text-[8px] text-rose-600 disabled:cursor-wait disabled:opacity-60">{deletingMovementId === movement.id ? 'Excluindo...' : 'Excluir'}</button></td></tr>;
                    })}
                    </tbody>
                </table>
            </div>
        </div>
    );
}
