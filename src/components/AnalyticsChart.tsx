import { useCallback, useEffect, useMemo, useState, type JSX } from 'react';
import { inventoryApi, type AnalyticsData } from '../services/api';

const emptyData: AnalyticsData = { topProducts: [], abc: [], turnover: [], turnoverByCategory: [] };

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
        let active = true;

        inventoryApi.getAnalytics()
            .then((nextData) => {
                if (!active) return;
                setData(nextData);
                setError(null);
            })
            .catch((requestError: unknown) => {
                if (!active) return;
                setError(requestError instanceof Error ? requestError.message : 'Não foi possível carregar as métricas.');
            })
            .finally(() => {
                if (active) setLoading(false);
            });

        return () => {
            active = false;
        };
    }, []);

    useEffect(() => {
        const handleInventoryUpdate = (): void => {
            void loadAnalytics();
        };

        window.addEventListener('inventory:updated', handleInventoryUpdate);
        return () => window.removeEventListener('inventory:updated', handleInventoryUpdate);
    }, [loadAnalytics]);

    const [selectedCategory, setSelectedCategory] = useState('');
    const categories = useMemo(
        () => [...new Set(data.turnoverByCategory.map((entry) => entry.category))],
        [data.turnoverByCategory],
    );
    const selectedTurnover = useMemo(
        () => selectedCategory
            ? data.turnoverByCategory.filter((entry) => entry.category === selectedCategory)
            : data.turnover,
        [data.turnover, data.turnoverByCategory, selectedCategory],
    );
    const turnoverValues = useMemo(
        () => selectedTurnover.map((entry) => Number(entry.entries) + Number(entry.exits)),
        [selectedTurnover],
    );

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

    const currentAverage = selectedTurnover.length
        ? (selectedTurnover.reduce((total, item) => total + Number(item.entries) + Number(item.exits), 0) / selectedTurnover.length).toFixed(1)
        : '0.0';

    const months = selectedTurnover.map((item) => item.month).slice(-6);

    if (loading) {
        return <div className="min-h-[253px] rounded-lg border border-slate-200 bg-white p-4 text-center text-xs text-slate-500">Carregando métricas...</div>;
    }

    if (error) {
        return <div className="min-h-[253px] rounded-lg border border-rose-100 bg-rose-50 p-4 text-center text-xs text-rose-600">{error}</div>;
    }

    return (
        <div className="min-h-[253px] rounded-lg border border-slate-200 bg-white p-4">
            <div className="mb-1 flex flex-col gap-2 sm:flex-row sm:items-start sm:justify-between">
                <div className="min-w-0">
                    <h2 className="text-sm font-semibold text-slate-800">Taxa de rotatividade do estoque</h2>
                    <p className="text-xs text-slate-500">Volumes movimentados por mês — últimos 6 meses</p>
                </div>
                <div className="flex w-full items-center gap-2 sm:w-auto sm:shrink-0">
                    <select
                        aria-label="Filtrar rotatividade por categoria"
                        className="min-w-0 flex-1 rounded-full border border-slate-200 bg-white px-3 py-2 text-xs text-slate-700 sm:max-w-44 sm:flex-none sm:py-1.5 sm:text-xs"
                        value={selectedCategory}
                        onChange={(event) => setSelectedCategory(event.target.value)}
                    >
                        <option value="">Todas as categorias</option>
                        {categories.map((category) => <option key={category} value={category}>{category}</option>)}
                    </select>
                    <span className="rounded-full bg-slate-100 px-2 py-1 text-[11px] text-slate-700">↗ {currentAverage}x</span>
                </div>
            </div>
            <div className="mt-3 flex items-end gap-2"><strong className="text-3xl leading-none text-slate-800">{currentAverage}x</strong><span className="text-xs text-slate-500">giro médio</span></div>
            <div className="relative mt-2 h-[140px] pl-7 sm:h-[157px]">
                <div className="absolute inset-x-6 top-2 border-t border-dashed border-slate-100" /><div className="absolute inset-x-6 top-[32%] border-t border-dashed border-slate-100" /><div className="absolute inset-x-6 top-[62%] border-t border-dashed border-slate-100" /><div className="absolute inset-x-6 bottom-2 border-t border-dashed border-slate-100" />
                <div className="absolute left-0 top-0 flex h-full flex-col justify-between text-[11px] text-slate-400"><span>{Math.round(maxTurnover)}</span><span>{Math.round(maxTurnover * 0.75)}</span><span>{Math.round(maxTurnover * 0.5)}</span><span>{Math.round(maxTurnover * 0.25)}</span><span>0</span></div>
                <svg viewBox="0 0 100 80" preserveAspectRatio="none" className="h-full w-full"><path d={`M0,80 L0,70 ${chartPoints} 100,80Z`} fill="#dcecef" /><polyline points={chartPoints} fill="none" stroke="#007d8b" strokeWidth="1.2" vectorEffect="non-scaling-stroke" /></svg>
                <div className="absolute left-6 right-6 top-[62%] border-t border-dashed border-[#ec9b16]" />
            </div>
            <div className="flex justify-between gap-1 pl-7 text-[11px] text-slate-500">
                {months.length ? months.map((month) => <span key={month}>{month}</span>) : <span>Sem dados</span>}
            </div>
            <div className="mt-2 flex justify-center gap-4 text-[11px] text-slate-500"><span><i className="mr-1 inline-block h-2 w-2 rounded-full bg-[#007d8b]" />Movimentação</span><span><i className="mr-1 inline-block h-2 w-2 rounded-full bg-[#ec9b16]" />Meta</span></div>
        </div>
    );
}