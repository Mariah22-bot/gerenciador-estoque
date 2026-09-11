import { useEffect, useState, type JSX } from 'react';
import { Bar, BarChart, CartesianGrid, Cell, Pie, PieChart, ResponsiveContainer, Tooltip, XAxis, YAxis } from 'recharts';
import { inventoryApi, type AnalyticsData } from '../services/api';

const colors = ['#007d8b', '#ec9b16', '#e22b36'];
const emptyData: AnalyticsData = { topProducts: [], abc: [], turnover: [] };

export default function Analytics(): JSX.Element {
    const [data, setData] = useState<AnalyticsData>(emptyData);
    const [loading, setLoading] = useState(true);
    const [error, setError] = useState<string | null>(null);

    useEffect(() => {
        inventoryApi.getAnalytics()
            .then(setData)
            .catch((requestError: unknown) => setError(requestError instanceof Error ? requestError.message : 'Não foi possível carregar as análises.'))
            .finally(() => setLoading(false));
    }, []);

    if (loading) return <div className="mx-auto max-w-[1120px] rounded-lg border border-slate-200 bg-white p-8 text-center text-xs text-slate-500">Calculando análises do estoque...</div>;
    if (error) return <div className="mx-auto max-w-[1120px] rounded-lg border border-rose-100 bg-rose-50 p-8 text-center text-xs text-rose-600">{error}</div>;

    return <div className="mx-auto max-w-[1120px] space-y-3"><div><h1 className="text-lg font-semibold text-slate-800">Curva ABC e análises</h1><p className="text-xs text-slate-500">Indicadores calculados a partir das movimentações registradas.</p></div><div className="grid grid-cols-1 gap-3 lg:grid-cols-2"><section className="rounded-lg border border-slate-200 bg-white p-3"><h2 className="text-xs font-semibold text-slate-800">Produtos mais movimentados</h2><p className="mb-3 text-[9px] text-slate-500">Saídas nos últimos 30 dias</p><div className="h-72"><ResponsiveContainer width="100%" height="100%"><BarChart data={data.topProducts} layout="vertical" margin={{ left: 10, right: 12 }}><CartesianGrid strokeDasharray="3 3" horizontal={false} stroke="#e2e8f0" /><XAxis type="number" tick={{ fontSize: 9 }} /><YAxis dataKey="name" type="category" width={110} tick={{ fontSize: 9 }} tickFormatter={(value: string) => value.length > 18 ? `${value.slice(0, 18)}…` : value} /><Tooltip formatter={(value) => [`${value} unidades`, 'Movimentadas']} /><Bar dataKey="units_moved" fill="#007d8b" radius={[0, 4, 4, 0]} /></BarChart></ResponsiveContainer></div></section><section className="rounded-lg border border-slate-200 bg-white p-3"><h2 className="text-xs font-semibold text-slate-800">Distribuição da Curva ABC</h2><p className="mb-3 text-[9px] text-slate-500">Classificação por valor movimentado</p><div className="h-72"><ResponsiveContainer width="100%" height="100%"><PieChart><Pie data={data.abc} dataKey="products" nameKey="classification" cx="50%" cy="50%" outerRadius={90}><Cell fill={colors[0]} /><Cell fill={colors[1]} /><Cell fill={colors[2]} /></Pie><Tooltip formatter={(value) => [`${value} produtos`, 'Quantidade']} /></PieChart></ResponsiveContainer></div><div className="flex justify-center gap-4 text-[10px] text-slate-600"><span><i className="mr-1 inline-block h-2 w-2 rounded-full bg-[#007d8b]" />Classe A</span><span><i className="mr-1 inline-block h-2 w-2 rounded-full bg-[#ec9b16]" />Classe B</span><span><i className="mr-1 inline-block h-2 w-2 rounded-full bg-[#e22b36]" />Classe C</span></div></section></div><section className="rounded-lg border border-slate-200 bg-white p-3"><h2 className="text-xs font-semibold text-slate-800">Entradas e saídas por mês</h2><p className="mb-3 text-[9px] text-slate-500">Últimos seis meses</p><div className="h-64"><ResponsiveContainer width="100%" height="100%"><BarChart data={data.turnover} margin={{ left: 0, right: 12 }}><CartesianGrid strokeDasharray="3 3" stroke="#e2e8f0" /><XAxis dataKey="month" tick={{ fontSize: 9 }} /><YAxis tick={{ fontSize: 9 }} /><Tooltip /><Bar dataKey="entries" name="Entradas" fill="#007d8b" radius={[4, 4, 0, 0]} /><Bar dataKey="exits" name="Saídas" fill="#e22b36" radius={[4, 4, 0, 0]} /></BarChart></ResponsiveContainer></div></section></div>;
}