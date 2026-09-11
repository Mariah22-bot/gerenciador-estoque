import { useCallback, useEffect, useMemo, useState, type JSX } from 'react';
import { inventoryApi, type AnalyticsData } from '../services/api';

const emptyData: AnalyticsData = { topProducts: [], abc: [], turnover: [] };

export default function AnalyticsChart(): JSX.Element {
    const [data, setData] = useState<AnalyticsData>(emptyData);
    const [loading, setLoading] = useState(true);
    const [error, setError] = useState<string | null>(null);

    const loadAnalytics = useCallback(async (): Promise<void> => {
        setLoading(true);
        setError(null);

        try {
            const nextData = await inventoryApi.getAnalytics();
            setData(nextData);
        } catch (requestError: unknown) {
            setError(requestError instanceof Error ? requestError.message : 'Não foi possível carregar as métricas.');
        } finally {
            setLoading(false);
        }
    }, []);

    useEffect(() => {
        void loadAnalytics();
    }, [loadAnalytics]);

    useEffect(() => {
        const handleInventoryUpdate = (): void => {
            void loadAnalytics();
        };

        window.addEventListener('inventory:updated', handleInventoryUpdate);
        return () => window.removeEventListener('inventory:updated', handleInventoryUpdate);
    }, [loadAnalytics]);

    const turnoverValues = useMemo(() => {
        if (!data.turnover.length) {
            return [] as number[];
        }

        return data.turnover.map((entry) => Number(entry.entries) + Number(entry.exits));
    }, [data.turnover]);

    const maxTurnover = Math.max(...turnoverValues, 1);
    const chartPoints = useMemo(() => {
        if (!turnoverValues.length) {
            return '0,80 100,80';
        }

        return turnoverValues
            .map((value, index) => {
                const x = turnoverValues.length === 1 ? 50 : (index / (turnoverValues.length - 1)) * 100;
                const y = 80 - ((value / maxTurnover) * 60 + 12);
                return `${x},${y}`;
            })
            .join(' ');
    }, [maxTurnover, turnoverValues]);

    const currentAverage = data.turnover.length
        ? (data.turnover.reduce((total, item) => total + Number(item.entries) + Number(item.exits), 0) / data.turnover.length).toFixed(1)
        : '0.0';

    const months = data.turnover.map((item) => item.month).slice(-6);

    if (loading) {
        return <div className="h-[253px] rounded-lg border border-slate-200 bg-white p-3 text-center text-[10px] text-slate-500">Carregando métricas...</div>;
    }

    if (error) {
        return <div className="h-[253px] rounded-lg border border-rose-100 bg-rose-50 p-3 text-center text-[10px] text-rose-600">{error}</div>;
    }

    return (
        <div className="h-[253px] rounded-lg border border-slate-200 bg-white p-3">
            <div className="mb-1 flex items-start justify-between">
                <div>
                    <h2 className="text-xs font-semibold text-slate-800">Taxa de rotatividade do estoque</h2>
                    <p className="text-[9px] text-slate-500">Volumes movimentados por mês — últimos 6 meses</p>
                </div>
                <span className="rounded-full bg-slate-100 px-2 py-0.5 text-[8px] text-slate-700">↗ {currentAverage}x</span>
            </div>
            <div className="mt-2 flex items-end gap-2"><strong className="text-xl text-slate-800">{currentAverage}x</strong><span className="text-[9px] text-slate-500">giro médio</span></div>
            <div className="relative mt-1 h-[157px] pl-6">
                <div className="absolute inset-x-6 top-2 border-t border-dashed border-slate-100" /><div className="absolute inset-x-6 top-[32%] border-t border-dashed border-slate-100" /><div className="absolute inset-x-6 top-[62%] border-t border-dashed border-slate-100" /><div className="absolute inset-x-6 bottom-2 border-t border-dashed border-slate-100" />
                <div className="absolute left-0 top-0 flex h-full flex-col justify-between text-[8px] text-slate-400"><span>{Math.round(maxTurnover)}</span><span>{Math.round(maxTurnover * 0.75)}</span><span>{Math.round(maxTurnover * 0.5)}</span><span>{Math.round(maxTurnover * 0.25)}</span><span>0</span></div>
                <svg viewBox="0 0 100 80" preserveAspectRatio="none" className="h-full w-full"><path d={`M0,80 L0,70 ${chartPoints} 100,80Z`} fill="#dcecef" /><polyline points={chartPoints} fill="none" stroke="#007d8b" strokeWidth="1.2" vectorEffect="non-scaling-stroke" /></svg>
                <div className="absolute left-6 right-6 top-[62%] border-t border-dashed border-[#ec9b16]" />
            </div>
            <div className="flex justify-between pl-6 text-[8px] text-slate-500">
                {months.length ? months.map((month) => <span key={month}>{month}</span>) : <span>Sem dados</span>}
            </div>
            <div className="mt-2 flex justify-center gap-4 text-[8px] text-slate-500"><span><i className="mr-1 inline-block h-1.5 w-1.5 rounded-full bg-[#007d8b]" />Movimentação</span><span><i className="mr-1 inline-block h-1.5 w-1.5 rounded-full bg-[#ec9b16]" />Meta</span></div>
        </div>
    );
}