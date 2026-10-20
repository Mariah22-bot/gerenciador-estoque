import { useState, type JSX } from 'react';
import Sidebar from './components/Sidebar';
import Header from './components/Header';
import Dashboard from './pages/Dashboard';
import Products from './pages/Products';
import Analytics from './pages/Analytics';
import type { TabId } from './types/dashboard';

export default function App(): JSX.Element {
  const [activeTab, setActiveTab] = useState<TabId>('dashboard');

  return (
    <div className="flex min-h-screen flex-col bg-[#f5f7f8] font-sans min-[1025px]:flex-row">
      <Sidebar activeTab={activeTab} setActiveTab={setActiveTab} />

      <div className="flex-1 flex flex-col min-w-0">
        <Header />
        <main className="flex-1 p-3 pb-20 sm:p-4 sm:pb-20 lg:pb-4 min-[1400px]:p-6 min-[1400px]:pb-6 min-[1600px]:p-8">
          {activeTab === 'dashboard' && <Dashboard />}
          {activeTab === 'analytics' && <Analytics />}
          {activeTab === 'users' && <Products />}
        </main>
      </div>
    </div>
  );
}