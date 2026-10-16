import { useEffect, useState, type JSX } from 'react';
import Sidebar from './components/Sidebar';
import Header from './components/Header';
import Dashboard from './pages/Dashboard';
import Products from './pages/Products';
import Analytics from './pages/Analytics';
import Settings from './pages/Settings';
import Login from './pages/Login';
import { ApiError, authApi } from './services/api';
import type { TabId } from './types/dashboard';

export default function App(): JSX.Element {
  const [activeTab, setActiveTab] = useState<TabId>('dashboard');
  const [authState, setAuthState] = useState<'checking' | 'authenticated' | 'unauthenticated' | 'error'>('checking');
  const [sessionCheck, setSessionCheck] = useState(0);
  const [logoutError, setLogoutError] = useState('');

  useEffect(() => {
    let isCurrent = true;
    const handleUnauthorized = (): void => setAuthState('unauthenticated');
    window.addEventListener('auth:unauthorized', handleUnauthorized);

    authApi.getSession()
      .then(() => {
        if (isCurrent) setAuthState('authenticated');
      })
      .catch((error: unknown) => {
        if (!isCurrent) return;
        setAuthState(error instanceof ApiError && error.status === 401 ? 'unauthenticated' : 'error');
      });

    return () => {
      isCurrent = false;
      window.removeEventListener('auth:unauthorized', handleUnauthorized);
    };
  }, [sessionCheck]);

  async function handleLogout(): Promise<void> {
    setLogoutError('');
    try {
      await authApi.logout();
      setAuthState('unauthenticated');
    } catch (error) {
      console.error('Não foi possível encerrar a sessão.', error);
      setLogoutError('Não foi possível sair. Verifique sua conexão e tente novamente.');
    }
  }

  if (authState === 'checking') {
    return <main className="flex min-h-screen items-center justify-center bg-[#13232d] text-sm text-white">Verificando acesso...</main>;
  }

  if (authState === 'error') {
    return (
      <main className="flex min-h-screen flex-col items-center justify-center gap-4 bg-[#13232d] px-4 text-center text-white">
        <p>Não foi possível verificar sua sessão. Confira se o servidor está disponível.</p>
        <button
          type="button"
          onClick={() => {
            setAuthState('checking');
            setSessionCheck((current) => current + 1);
          }}
          className="rounded-lg bg-[#087f8c] px-4 py-2 text-sm font-semibold hover:bg-[#066c77]"
        >
          Tentar novamente
        </button>
      </main>
    );
  }

  if (authState === 'unauthenticated') {
    return <Login onLogin={() => setAuthState('authenticated')} />;
  }

  return (
    <div className="flex min-h-screen bg-[#f5f7f8] font-sans">
      <Sidebar activeTab={activeTab} setActiveTab={setActiveTab} />

      <div className="flex-1 flex flex-col min-w-0">
        <Header onLogout={() => { void handleLogout(); }} />
        {logoutError && (
          <p role="alert" className="bg-red-50 px-4 py-2 text-sm text-red-700">
            {logoutError}
          </p>
        )}
        <main className="flex-1 overflow-y-auto p-3 sm:p-4">
          {activeTab === 'dashboard' && <Dashboard />}
          {activeTab === 'analytics' && <Analytics />}
          {activeTab === 'users' && <Products />}
          {activeTab === 'settings' && <Settings />}
        </main>
      </div>
    </div>
  );
}