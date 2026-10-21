import { useState, type FormEvent, type JSX } from 'react';
import { useAuth } from '../services/useAuth';
import { supabase } from '../services/supabase';

export default function Login(): JSX.Element {
  const { signIn, error: authError } = useAuth();
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [error, setError] = useState<string | null>(null);
  const [submitting, setSubmitting] = useState(false);

  async function handleSubmit(event: FormEvent<HTMLFormElement>): Promise<void> {
    event.preventDefault();
    setError(null);
    setSubmitting(true);
    try {
      await signIn(email.trim(), password);
    } catch (signInError: unknown) {
      setError(signInError instanceof Error ? signInError.message : 'Não foi possível entrar.');
    } finally {
      setSubmitting(false);
    }
  }

  return (
    <main className="flex min-h-screen items-center justify-center bg-[#f5f7f8] p-4">
      <form onSubmit={handleSubmit} className="w-full max-w-sm rounded-xl border border-slate-200 bg-white p-6 shadow-sm">
        <div className="mb-6 text-center">
          <div className="mx-auto mb-3 flex h-10 w-10 items-center justify-center rounded-full bg-[#087f8c] text-xs text-white">MFF</div>
          <h1 className="text-lg font-semibold text-slate-800">Acesso ao estoque</h1>
          <p className="mt-1 text-sm text-slate-500">Entre com a conta autorizada pelo responsável.</p>
        </div>
        <div className="space-y-4">
          <label className="block text-sm font-medium text-slate-700">
            E-mail
            <input
              type="email"
              autoComplete="username"
              value={email}
              onChange={(event) => setEmail(event.target.value)}
              required
              className="mt-1 w-full rounded border border-slate-200 px-3 py-2.5 text-sm outline-none focus:border-[#007d8b]"
            />
          </label>
          <label className="block text-sm font-medium text-slate-700">
            Senha
            <input
              type="password"
              autoComplete="current-password"
              value={password}
              onChange={(event) => setPassword(event.target.value)}
              required
              className="mt-1 w-full rounded border border-slate-200 px-3 py-2.5 text-sm outline-none focus:border-[#007d8b]"
            />
          </label>
          {!supabase && <p role="alert" className="rounded bg-rose-50 p-3 text-xs text-rose-600">Autenticação não configurada. Contate o responsável pelo sistema.</p>}
          {authError && <p role="alert" className="rounded bg-rose-50 p-3 text-xs text-rose-600">{authError}</p>}
          {error && <p role="alert" className="rounded bg-rose-50 p-3 text-xs text-rose-600">{error}</p>}
          <button type="submit" disabled={!supabase || submitting} className="w-full rounded bg-[#007d8b] px-4 py-2.5 text-sm font-medium text-white hover:bg-[#006c78] disabled:cursor-not-allowed disabled:opacity-60">
            {submitting ? 'Entrando...' : 'Entrar'}
          </button>
        </div>
      </form>
    </main>
  );
}
