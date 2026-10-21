import { lazy, Suspense, useState, type JSX } from 'react';
import Sidebar from './components/Sidebar';
import Header from './components/Header';
import { isDemoMode } from './services/api';
import type { TabId } from './types/dashboard';

const Dashboard = lazy(() => import('./pages/Dashboard'));
const Products = lazy(() => import('./pages/Products'));
const Analytics = lazy(() => import('./pages/Analytics'));

export default function App(): JSX.Element {
  const [activeTab, setActiveTab] = useState<TabId>('dashboard');

  return (
    <div className="flex min-h-screen flex-col bg-[#f5f7f8] font-sans min-[1025px]:flex-row">
      <Sidebar activeTab={activeTab} setActiveTab={setActiveTab} />

      <div className="flex-1 flex flex-col min-w-0">
        <Header />
        {isDemoMode && (
          <div role="status" className="border-b border-amber-200 bg-amber-50 px-4 py-2 text-center text-sm text-amber-900">
            Demonstração pública: todos os dados exibidos são fictícios; o acesso ao estoque do cliente não está disponível.
          </div>
        )}
        <main className="flex-1 p-3 pb-20 sm:p-4 sm:pb-20 lg:pb-4 min-[1400px]:p-6 min-[1400px]:pb-6 min-[1600px]:p-8">
          <Suspense fallback={<div className="rounded-lg border border-slate-200 bg-white p-8 text-center text-sm text-slate-500">Carregando página...</div>}>
            {activeTab === 'dashboard' && <Dashboard />}
            {activeTab === 'analytics' && <Analytics />}
            {activeTab === 'users' && <Products />}
          </Suspense>
        </main>
      </div>
    </div>
  );
}