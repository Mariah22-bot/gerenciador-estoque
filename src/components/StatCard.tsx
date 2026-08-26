import type { JSX } from 'react';
import type { StatCardProps } from '../types/dashboard';
import Icon from './Icon';

export default function StatCard({ title, value, change, isPositive, icon }: StatCardProps): JSX.Element {
    return (
        <div className={`rounded-lg p-3 border border-slate-200 bg-white min-w-0 ${!isPositive ? 'border-t-rose-100' : ''}`}>
            <div>
                <span className={`text-[10px] flex items-center gap-1 ${!isPositive ? 'text-rose-500' : 'text-slate-500'}`}><Icon name={icon} size={11} />{title}</span>
                <h3 className="text-xl leading-tight font-medium text-slate-800 mt-1">{value}</h3>
                <div className="flex items-center gap-1 mt-1.5">
                    <span className={`rounded-full px-1.5 py-0.5 text-[8px] ${isPositive ? 'bg-slate-100 text-slate-700' : 'bg-rose-50 text-rose-500'}`}>
                        {isPositive ? '↗' : '↘'} {change}
                    </span>
                    <span className="text-[8px] text-slate-400">vs. mês anterior</span>
                </div>
                <p className="mt-2 text-[8px] text-slate-500">{isPositive ? '1.415 ativos · 67 pausados no anúncio' : '4.5% do catálogo imobilizado'}</p>
            </div>
        </div>
    );
}