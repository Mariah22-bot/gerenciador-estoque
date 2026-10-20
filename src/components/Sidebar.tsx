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
        <aside className="fixed inset-x-0 bottom-0 z-30 flex h-16 w-full shrink-0 justify-center bg-[#13232d] px-2 py-2 text-slate-300 lg:static lg:min-h-screen lg:w-40 lg:flex-col lg:justify-between lg:px-2.5 lg:py-3">
            <div className="flex w-full items-center lg:block">
                <div className="mb-8 hidden items-center gap-2 px-1 text-white lg:flex">
                    <div className="flex h-8 w-8 items-center justify-center rounded-md bg-[#f5a400] text-sm font-black text-[#13232d]">E</div>
                    <div className="leading-tight"><strong className="block text-sm">Estoque</strong><span className="text-[11px] text-slate-400">Gestão de estoque</span></div>
                </div>
                <p className="mb-2 hidden px-1 text-[11px] uppercase tracking-wider text-slate-500 lg:block">Operação</p>
                <nav className="flex w-full items-center justify-around lg:block lg:space-y-0.5">
                    {menuItems.map((item) => (
                        <button
                            key={item.id}
                            onClick={() => setActiveTab(item.id)}
                                className={`flex min-w-0 flex-1 flex-col items-center gap-1 rounded px-1 py-1.5 text-[11px] transition-all lg:w-full lg:flex-row lg:gap-2 lg:px-2 lg:py-2 lg:text-[13px] ${activeTab === item.id
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