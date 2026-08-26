import { useState, type JSX } from 'react';
import Sidebar from './components/Sidebar';
import Header from './components/Header';
import Dashboard from './pages/Dashboard';
import type { TabId } from './types/dashboard';

export default function App(): JSX.Element {
  const [activeTab, setActiveTab] = useState<TabId>('dashboard');

  return (
    <div className="flex min-h-screen bg-[#f5f7f8] font-sans">
      <Sidebar activeTab={activeTab} setActiveTab={setActiveTab} />

      <div className="flex-1 flex flex-col min-w-0">
        <Header />
        <main className="flex-1 overflow-y-auto p-3 sm:p-4">
          {activeTab === 'dashboard' && <Dashboard />}
          {activeTab !== 'dashboard' && (
            <div className="flex items-center justify-center h-64 bg-white rounded-xl border border-gray-100 shadow-sm">
              <p className="text-gray-500 font-medium">Conteúdo da tela <span className="text-indigo-600 capitalize">{activeTab}</span> em desenvolvimento...</p>
            </div>
          )}
        </main>
      </div>
    </div>
  );
}