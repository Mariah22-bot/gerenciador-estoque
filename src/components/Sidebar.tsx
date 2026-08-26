import type { JSX } from 'react/jsx-runtime';
import type { SidebarProps, TabId } from '../types/dashboard';

interface MenuItem {
    id: TabId;
    label: string;
    icon: string;
}

export default function Sidebar({ activeTab, setActiveTab }: SidebarProps): JSX.Element {
    const menuItems: MenuItem[] = [
        { id: 'dashboard', label: 'Dashboard', icon: '📊' },
        { id: 'analytics', label: 'Métricas', icon: '📈' },
        { id: 'users', label: 'Usuários', icon: '👥' },
        { id: 'settings', label: 'Configurações', icon: '⚙️' },
    ];

    return (
        <aside className="w-64 bg-slate-900 text-slate-300 min-h-screen p-5 flex flex-col justify-between">
            <div>
                <div className="flex items-center space-x-2 text-white font-extrabold text-2xl tracking-wide mb-8">
                    <span className="text-indigo-500">❖</span>
                    <span>SYSTEM</span>
                </div>

                <nav className="space-y-2">
                    {menuItems.map((item) => (
                        <button
                            key={item.id}
                            onClick={() => setActiveTab(item.id)}
                            className={`w-full flex items-center space-x-3 px-4 py-3 rounded-lg text-sm font-medium transition-all ${activeTab === item.id
                                    ? 'bg-indigo-600 text-white shadow-md'
                                    : 'hover:bg-slate-800 hover:text-white'
                                }`}
                        >
                            <span>{item.icon}</span>
                            <span>{item.label}</span>
                        </button>
                    ))}
                </nav>
            </div>

            <div className="pt-6 border-t border-slate-800">
                <button className="w-full flex items-center space-x-3 px-4 py-3 rounded-lg text-sm font-medium text-red-400 hover:bg-slate-800 transition-all">
                    <span>🚪</span>
                    <span>Sair</span>
                </button>
            </div>
        </aside>
    );
}