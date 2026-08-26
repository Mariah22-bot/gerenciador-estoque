import type { JSX } from 'react';

export default function AnalyticsChart(): JSX.Element {
    const points = '0,70 15,64 30,61 45,64 60,54 75,42 90,38 105,36 120,33 135,28';

    return (
        <div className="bg-white rounded-lg p-3 border border-slate-200 h-[253px]">
            <div className="flex justify-between items-start mb-1">
                <div>
                    <h2 className="text-xs font-semibold text-slate-800">Taxa de rotatividade do estoque</h2>
                    <p className="text-[9px] text-slate-500">Quantas vezes o estoque foi renovado por mês — últimos 6 meses</p>
                </div>
                <span className="rounded-full bg-slate-100 px-2 py-0.5 text-[8px] text-slate-700">↗ +7,6%</span>
            </div>
            <div className="flex items-end gap-2 mt-2"><strong className="text-xl text-slate-800">3,7x</strong><span className="text-[9px] text-slate-500">giro médio em agosto</span></div>
            <div className="relative mt-1 h-[157px] pl-6">
                <div className="absolute inset-x-6 top-2 border-t border-dashed border-slate-100" /><div className="absolute inset-x-6 top-[32%] border-t border-dashed border-slate-100" /><div className="absolute inset-x-6 top-[62%] border-t border-dashed border-slate-100" /><div className="absolute inset-x-6 bottom-2 border-t border-dashed border-slate-100" />
                <div className="absolute left-0 top-0 flex h-full flex-col justify-between text-[8px] text-slate-400"><span>5x</span><span>4x</span><span>3x</span><span>2x</span><span>1x</span><span>0x</span></div>
                <svg viewBox="0 0 140 80" preserveAspectRatio="none" className="h-full w-full"><path d="M0,80 L0,70 15,64 30,61 45,64 60,54 75,42 90,38 105,36 120,33 135,28 140,80Z" fill="#dcecef" /><polyline points={points} fill="none" stroke="#007d8b" strokeWidth="1.2" vectorEffect="non-scaling-stroke" /></svg>
                <div className="absolute left-6 right-6 top-[62%] border-t border-dashed border-[#ec9b16]" />
            </div>
            <div className="flex justify-between pl-6 text-[8px] text-slate-500"><span>Mar</span><span>Abr</span><span>Mai</span><span>Jun</span><span>Jul</span><span>Ago</span></div>
            <div className="mt-2 flex justify-center gap-4 text-[8px] text-slate-500"><span><i className="mr-1 inline-block h-1.5 w-1.5 rounded-full bg-[#007d8b]" />Giro realizado</span><span><i className="mr-1 inline-block h-1.5 w-1.5 rounded-full bg-[#ec9b16]" />Meta</span></div>
        </div>
    );
}