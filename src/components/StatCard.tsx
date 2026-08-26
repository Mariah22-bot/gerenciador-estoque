import type { JSX } from 'react/jsx-runtime';
import type { StatCardProps } from '../types/dashboard';

export default function StatCard({ title, value, change, isPositive, icon }: StatCardProps): JSX.Element {
    return (
        <div className="bg-white rounded-xl p-5 shadow-sm border border-gray-100 flex items-center justify-between">
            <div>
                <span className="text-xs font-semibold uppercase tracking-wider text-gray-400">{title}</span>
                <h3 className="text-2xl font-bold text-gray-800 mt-1">{value}</h3>
                <div className="flex items-center space-x-1 mt-2">
                    <span className={`text-xs font-semibold ${isPositive ? 'text-emerald-500' : 'text-rose-500'}`}>
                        {isPositive ? '↑' : '↓'} {change}
                    </span>
                    <span className="text-xs text-gray-400">vs mês anterior</span>
                </div>
            </div>
            <div className="h-12 w-12 rounded-lg bg-indigo-50 text-indigo-600 flex items-center justify-center text-xl">
                {icon}
            </div>
        </div>
    );
}