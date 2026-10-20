import type { JSX } from 'react';
import type { StatCardProps } from '../types/dashboard';
import Icon from './Icon';

export default function StatCard({
    title,
    value,
    change,
    isPositive,
    icon,
    comparisonLabel = 'vs. mês anterior',
    detail,
}: StatCardProps): JSX.Element {
    return (
        <div className={`rounded-lg p-3 border border-slate-200 bg-white min-w-0 ${!isPositive ? 'border-t-rose-100' : ''}`}>
            <div>
                <span className={`text-[13px] flex items-center gap-1 ${!isPositive ? 'text-rose-500' : 'text-slate-500'}`}><Icon name={icon} size={14} />{title}</span>
                <h3 className="text-xl leading-tight font-medium text-slate-800 mt-1">{value}</h3>
                <div className="flex items-center gap-1 mt-1.5">
                    <span className={`rounded-full px-2 py-1 text-[11px] ${isPositive ? 'bg-slate-100 text-slate-700' : 'bg-rose-50 text-rose-500'}`}>
                        {isPositive ? '↗' : '↘'} {change}
                    </span>
                    {comparisonLabel && <span className="text-[11px] text-slate-400">{comparisonLabel}</span>}
                </div>
            </div>
        </div>
    );
}