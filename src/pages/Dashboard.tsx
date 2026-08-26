import StatCard from '../components/StatCard';
import UserTable from '../components/UserTable';
import AnalyticsChart from '../components/AnalyticsChart';
import type { JSX } from 'react/jsx-runtime';

export default function Dashboard(): JSX.Element {
    return (
        <div className="space-y-6">
            <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6">
                <StatCard title="Receita Total" value="R$ 45.200" change="12.5%" isPositive={true} icon="💰" />
                <StatCard title="Novos Usuários" value="1.240" change="8.1%" isPositive={true} icon="👤" />
                <StatCard title="Taxa de Conversão" value="3.42%" change="1.2%" isPositive={false} icon="⚡" />
                <StatCard title="Sessões Ativas" value="432" change="5.4%" isPositive={true} icon="🌐" />
            </div>

            <div className="grid grid-cols-1 lg:grid-cols-3 gap-6">
                <div className="lg:col-span-2">
                    <AnalyticsChart />
                </div>
                <div className="lg:col-span-1">
                    <div className="bg-white rounded-xl p-6 shadow-sm border border-gray-100 h-full flex flex-col justify-between">
                        <h2 className="text-lg font-bold text-gray-800 mb-4">Resumo da Rede</h2>
                        <div className="space-y-4">
                            <div className="p-4 bg-gray-50 rounded-lg flex justify-between items-center">
                                <span className="text-sm font-medium text-gray-600">Servidores On-line</span>
                                <span className="text-sm font-bold text-emerald-600">99.9%</span>
                            </div>
                            <div className="p-4 bg-gray-50 rounded-lg flex justify-between items-center">
                                <span className="text-sm font-medium text-gray-600">Uso de Memória</span>
                                <span className="text-sm font-bold text-amber-600">64%</span>
                            </div>
                            <div className="p-4 bg-gray-50 rounded-lg flex justify-between items-center">
                                <span className="text-sm font-medium text-gray-600">Solicitações/min</span>
                                <span className="text-sm font-bold text-indigo-600">1.420</span>
                            </div>
                        </div>
                        <button className="w-full mt-6 py-2 bg-indigo-50 text-indigo-600 font-semibold text-sm rounded-lg hover:bg-indigo-100 transition-colors">
                            Baixar Relatório Completo
                        </button>
                    </div>
                </div>
            </div>

            <UserTable />
        </div>
    );
}