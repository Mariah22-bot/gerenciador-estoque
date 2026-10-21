import { lazy, Suspense, useEffect, useState, type JSX } from 'react';
import Sidebar from './components/Sidebar';
import Header from './components/Header';
import { isDemoMode } from './services/api';
import { demoData } from './services/demoData';
import type { TabId } from './types/dashboard';

const Dashboard = lazy(() => import('./pages/Dashboard'));
const Products = lazy(() => import('./pages/Products'));
const Analytics = lazy(() => import('./pages/Analytics'));

export default function App(): JSX.Element {
  const [activeTab, setActiveTab] = useState<TabId>('dashboard');
  const [demoResetError, setDemoResetError] = useState<string | null>(null);

  useEffect(() => {
    const syncDemoData = (event: StorageEvent): void => {
      if (event.key?.startsWith('gerenciador-estoque:demo:')) {
        window.dispatchEvent(new CustomEvent('inventory:updated'));
      }
    };
    window.addEventListener('storage', syncDemoData);
    return () => window.removeEventListener('storage', syncDemoData);
  }, []);

  function resetDemo(): void {
    if (!window.confirm('Restaurar os dados fictícios iniciais? As alterações feitas neste navegador serão apagadas.')) return;
    setDemoResetError(null);
    try {
      demoData.reset();
    } catch (resetError: unknown) {
      setDemoResetError(resetError instanceof Error ? resetError.message : 'Não foi possível restaurar a demonstração.');
    }
  }

  return (
    <div className="flex min-h-screen flex-col bg-[#f5f7f8] font-sans min-[1025px]:flex-row">
      <Sidebar activeTab={activeTab} setActiveTab={setActiveTab} />

      <div className="flex-1 flex flex-col min-w-0">
        <Header />
        {isDemoMode && (
          <div role="status" className="demo-banner flex flex-col items-center justify-center gap-2 border-b border-amber-200 bg-amber-50 px-4 py-2 text-center text-sm sm:flex-row">
            <span>Demonstração pública: dados fictícios; suas alterações ficam apenas neste navegador e não acessam o estoque do cliente.</span>
            <button type="button" onClick={resetDemo} className="demo-reset-button shrink-0 rounded border border-amber-300 px-2.5 py-1 text-xs font-medium hover:bg-amber-100">
              Restaurar demonstração
            </button>
            {demoResetError && <span role="alert" className="text-xs text-rose-700">{demoResetError}</span>}
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