import { useEffect, useState, type JSX } from 'react';
import StatCard from '../components/StatCard';
import UserTable from '../components/UserTable';
import AnalyticsChart from '../components/AnalyticsChart';
import { inventoryApi, type DashboardSummary, type Movement } from '../services/api';

const emptySummary: DashboardSummary = { product_count: 0, inactive_product_count: 0, invested_capital: '0', entries: 0, exits: 0 };

export default function Dashboard(): JSX.Element {
    const [summary, setSummary] = useState<DashboardSummary>(emptySummary);
    const [movements, setMovements] = useState<Movement[]>([]);
    const [loading, setLoading] = useState(true);
    const [error, setError] = useState<string | null>(null);

    useEffect(() => {
        Promise.all([inventoryApi.getSummary(), inventoryApi.getMovements()])
            .then(([nextSummary, nextMovements]) => { setSummary(nextSummary); setMovements(nextMovements); })
            .catch((requestError: unknown) => { setError(requestError instanceof Error ? requestError.message : 'Não foi possível carregar o dashboard.'); })
            .finally(() => setLoading(false));
    }, []);

    const capital = Number(summary.invested_capital).toLocaleString('pt-BR', { style: 'currency', currency: 'BRL' });
    const balance = summary.entries - summary.exits;

    return (
        <div className="mx-auto max-w-[1120px] space-y-3">
            <div className="grid grid-cols-1 gap-2 sm:grid-cols-2 lg:grid-cols-4">
                <StatCard title="Produtos cadastrados" value={String(summary.product_count)} change="Dados reais" isPositive={true} icon="box" />
                <StatCard title="Produtos sem giro" value={String(summary.inactive_product_count)} change="Estoque zerado" isPositive={false} icon="refresh" />
                <StatCard title="Capital imobilizado" value={capital} change="Valor atual" isPositive={true} icon="box" />
                <StatCard title="Entradas vs. saídas" value={`${summary.entries} / ${summary.exits}`} change={`Saldo ${balance >= 0 ? '+' : ''}${balance}`} isPositive={balance >= 0} icon="exchange" />
            </div>
            <div className="grid grid-cols-1 gap-3 lg:grid-cols-3"><div className="lg:col-span-2"><AnalyticsChart /></div><div className="rounded-lg border border-slate-200 bg-white p-3"><h2 className="text-xs font-semibold text-slate-800">Mais vendidos vs. mais parados</h2><p className="mb-2 text-[9px] text-slate-500">Os dados serão calculados a partir das movimentações.</p><p className="py-8 text-center text-[9px] text-slate-400">Ainda não há movimentações cadastradas.</p></div></div>
            <UserTable movements={movements} loading={loading} error={error} />
        </div>
    );
}
