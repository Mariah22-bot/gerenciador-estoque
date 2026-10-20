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
    ];

    return (
        <aside className="fixed inset-x-0 bottom-0 z-30 flex h-16 w-full shrink-0 justify-center bg-[#13232d] px-2 py-2 text-slate-300 min-[1025px]:static min-[1025px]:h-auto min-[1025px]:min-h-screen min-[1025px]:w-40 min-[1025px]:self-stretch min-[1025px]:flex-col min-[1025px]:justify-between min-[1025px]:px-2.5 min-[1025px]:py-3">
            <div className="flex w-full items-center min-[1025px]:block">
                <div className="mb-8 hidden items-center gap-2 px-1 text-white min-[1025px]:flex">
                    <div className="flex h-8 w-8 items-center justify-center rounded-md bg-[#f5a400] text-sm font-black text-[#13232d]">E</div>
                    <div className="leading-tight"><strong className="block text-sm">Estoque</strong><span className="text-[11px] text-slate-400">Gestão de estoque</span></div>
                </div>
                <p className="mb-2 hidden px-1 text-[11px] uppercase tracking-wider text-slate-500 min-[1025px]:block">Operação</p>
                <nav className="flex w-full items-center justify-around min-[1025px]:block min-[1025px]:space-y-0.5">
                    {menuItems.map((item) => (
                        <button
                            key={item.id}
                            onClick={() => setActiveTab(item.id)}
                                className={`flex min-w-0 flex-1 flex-col items-center gap-1 rounded px-1 py-1.5 text-[11px] transition-all min-[1025px]:w-full min-[1025px]:flex-row min-[1025px]:gap-2 min-[1025px]:px-2 min-[1025px]:py-2 min-[1025px]:text-[13px] ${activeTab === item.id
                                    ? 'bg-[#263b47] text-white'
                                    : 'hover:bg-[#1d333f] hover:text-white'
                                }`}
                        >
                            <Icon name={item.icon} size={14} />
                            <span className="truncate">{item.label}</span>
                        </button>
                    ))}
                </nav>
            </div>

        </aside>
    );
}