import type { JSX } from 'react';
import type { SidebarProps, TabId } from '../types/dashboard';
import Icon from './Icon';

interface MenuItem {
    id: TabId;
    label: string;
    icon: string;
}

export default function Sidebar({ activeTab, setActiveTab }: SidebarProps): JSX.Element {
    const menuItems: MenuItem[] = [
        { id: 'dashboard', label: 'Dashboard', icon: 'grid' },
        { id: 'analytics', label: 'Curva ABC', icon: 'chart' },
        { id: 'users', label: 'Produtos', icon: 'box' },
        { id: 'settings', label: 'Configurações', icon: 'settings' },
    ];

    return (
        <aside className="w-40 shrink-0 bg-[#13232d] text-slate-300 min-h-screen px-2.5 py-3 flex flex-col justify-between">
            <div>
                <div className="flex items-center gap-2 text-white mb-8 px-1">
                    <div className="h-7 w-7 rounded-md bg-[#f5a400] text-[#13232d] flex items-center justify-center font-black text-xs">E</div>
                    <div className="leading-tight"><strong className="block text-[11px]">Estoque ML</strong><span className="text-[8px] text-slate-400">Loja Oficial</span></div>
                </div>
                <p className="px-1 mb-2 text-[8px] uppercase tracking-wider text-slate-500">Operação</p>
                <nav className="space-y-0.5">
                    {menuItems.map((item) => (
                        <button
                            key={item.id}
                            onClick={() => setActiveTab(item.id)}
                                className={`w-full flex items-center gap-2 px-2 py-1.5 rounded text-[10px] transition-all ${activeTab === item.id
                                    ? 'bg-[#263b47] text-white'
                                    : 'hover:bg-[#1d333f] hover:text-white'
                                }`}
                        >
                                <Icon name={item.icon} size={12} />
                            <span>{item.label}</span>
                        </button>
                    ))}
                </nav>
            </div>

            <div className="border-t border-slate-700 pt-3 px-1">
                <div className="flex items-center gap-2 text-[9px]"><span className="h-5 w-5 rounded bg-[#263b47] flex items-center justify-center text-[#f5a400]">•</span><div><span className="block text-slate-300">API Mercado Livre</span><span className="text-[8px] text-slate-500">Sincronizado</span></div><span className="ml-auto text-slate-500">⌄</span></div>
            </div>
        </aside>
    );
}