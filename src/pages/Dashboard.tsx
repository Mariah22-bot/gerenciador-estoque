import StatCard from '../components/StatCard';
import UserTable from '../components/UserTable';
import AnalyticsChart from '../components/AnalyticsChart';
import type { JSX } from 'react';

export default function Dashboard(): JSX.Element {
    return (
        <div className="mx-auto max-w-[1120px] space-y-3">
            <div className="grid grid-cols-1 gap-2 sm:grid-cols-2 lg:grid-cols-4">
                <StatCard title="Produtos cadastrados" value="1.482" change="+3,8%" isPositive={true} icon="box" />
                <StatCard title="Produtos sem giro" value="67" change="+12,5%" isPositive={false} icon="refresh" />
                <StatCard title="Capital imobilizado" value="R$ 428.950" change="-2,1%" isPositive={true} icon="box" />
                <StatCard title="Entradas vs. saídas" value="3.210 / 2.744" change="Saldo +466" isPositive={true} icon="exchange" />
            </div>

            <div className="grid grid-cols-1 gap-3 lg:grid-cols-3">
                <div className="lg:col-span-2">
                    <AnalyticsChart />
                </div>
                <div className="rounded-lg border border-slate-200 bg-white p-3">
                    <h2 className="text-xs font-semibold text-slate-800">Mais vendidos vs. mais parados</h2>
                    <p className="mb-2 text-[9px] text-slate-500">Unidades movimentadas nos últimos 30 dias</p>
                    <div className="space-y-1.5">
                        {[['Protetor de sofá', 100, 'teal'], ['Protetor de colchão', 80, 'teal'], ['Capa de travesseiro', 60, 'teal'], ['Capas de Cadeira', 42, 'teal'], ['Saia de cama', 8, 'red'], ['Toalha de rosto', 5, 'red'], ['	Toalha de mesa', 3, 'red'], ['Tapetes', 2, 'red']].map(([label, width, color]) => (
                            <div key={label} className="flex items-center gap-1"><span className="w-20 truncate text-right text-[8px] text-slate-500">{label}</span><div className="h-2 flex-1 rounded-r bg-slate-100"><div className={`h-full rounded-r ${color === 'teal' ? 'bg-[#007d8b]' : 'bg-[#e22b36]'}`} style={{ width: `${Number(width)}%` }} /></div></div>
                        ))}
                    </div>
                    <div className="mt-3 flex gap-3 border-t border-slate-200 pt-2 text-[8px] text-slate-500"><span><i className="mr-1 inline-block h-1.5 w-1.5 rounded-full bg-[#007d8b]" />Alta rotatividade</span><span><i className="mr-1 inline-block h-1.5 w-1.5 rounded-full bg-[#e22b36]" />Sem giro</span></div>
                </div>
            </div>

            <UserTable />
        </div>
    );
}