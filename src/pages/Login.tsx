import { useState, type FormEvent, type JSX } from 'react';
import { ApiError, authApi } from '../services/api';

interface LoginProps {
  onLogin: () => void;
}

export default function Login({ onLogin }: LoginProps): JSX.Element {
  const [username, setUsername] = useState('');
  const [password, setPassword] = useState('');
  const [error, setError] = useState('');
  const [isSubmitting, setIsSubmitting] = useState(false);

  async function handleSubmit(event: FormEvent<HTMLFormElement>): Promise<void> {
    event.preventDefault();
    setError('');
    setIsSubmitting(true);

    try {
      await authApi.login(username, password);
      onLogin();
    } catch (loginError) {
      setError(loginError instanceof ApiError
        ? loginError.message
        : 'Não foi possível conectar ao servidor. Tente novamente.');
    } finally {
      setIsSubmitting(false);
    }
  }

  return (
    <main className="flex min-h-screen items-center justify-center bg-[#13232d] px-4 py-10">
      <section className="w-full max-w-sm rounded-2xl bg-white p-8 shadow-2xl sm:p-10">
        <div className="mb-8 flex items-center gap-3">
          <div className="flex h-11 w-11 items-center justify-center rounded-xl bg-[#f5a400] text-xl font-black text-[#13232d]">
            E
          </div>
          <div>
            <p className="text-sm font-bold tracking-wide text-[#13232d]">Estoque ML</p>
            <p className="text-xs text-slate-500">MFF ENXOVAIS</p>
          </div>
        </div>

        <h1 className="text-2xl font-bold text-[#13232d]">Acesso da equipe</h1>
        <p className="mt-2 text-sm text-slate-500">Entre com o usuário e a senha compartilhados da empresa.</p>

        <form className="mt-7 space-y-5" onSubmit={handleSubmit}>
          <div>
            <label htmlFor="username" className="mb-1.5 block text-sm font-medium text-slate-700">
              Usuário
            </label>
            <input
              id="username"
              name="username"
              type="text"
              autoComplete="username"
              required
              value={username}
              onChange={(event) => setUsername(event.target.value)}
              className="w-full rounded-lg border border-slate-300 px-3 py-2.5 text-sm outline-none transition focus:border-[#087f8c] focus:ring-2 focus:ring-[#087f8c]/20"
            />
          </div>

          <div>
            <label htmlFor="password" className="mb-1.5 block text-sm font-medium text-slate-700">
              Senha
            </label>
            <input
              id="password"
              name="password"
              type="password"
              autoComplete="current-password"
              required
              value={password}
              onChange={(event) => setPassword(event.target.value)}
              className="w-full rounded-lg border border-slate-300 px-3 py-2.5 text-sm outline-none transition focus:border-[#087f8c] focus:ring-2 focus:ring-[#087f8c]/20"
            />
          </div>

          {error && (
            <p role="alert" className="rounded-lg bg-red-50 px-3 py-2 text-sm text-red-700">
              {error}
            </p>
          )}

          <button
            type="submit"
            disabled={isSubmitting}
            className="w-full rounded-lg bg-[#087f8c] px-4 py-2.5 text-sm font-semibold text-white transition hover:bg-[#066c77] disabled:cursor-not-allowed disabled:opacity-60"
          >
            {isSubmitting ? 'Entrando...' : 'Entrar'}
          </button>
        </form>
      </section>
    </main>
  );
}
