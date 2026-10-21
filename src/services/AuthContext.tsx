import { useEffect, useState, type JSX, type ReactNode } from 'react';
import type { Session } from '@supabase/supabase-js';
import { isDemoMode } from './api';
import { supabase } from './supabase';
import { AuthContext } from './authContext';

export function AuthProvider({ children }: { children: ReactNode }): JSX.Element {
  const [session, setSession] = useState<Session | null>(null);
  const [loading, setLoading] = useState(!isDemoMode && Boolean(supabase));
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    if (isDemoMode || !supabase) return;

    let active = true;
    const { data: { subscription } } = supabase.auth.onAuthStateChange((_event, nextSession) => {
      if (!active) return;
      setSession(nextSession);
      setLoading(false);
      setError(null);
    });

    void supabase.auth.getSession()
      .then(({ data, error: sessionError }) => {
        if (!active) return;
        setSession(data.session);
        if (sessionError) setError('Não foi possível recuperar sua sessão. Faça login novamente.');
        setLoading(false);
      })
      .catch(() => {
        if (!active) return;
        setError('Não foi possível validar sua sessão.');
        setLoading(false);
      });

    return () => {
      active = false;
      subscription.unsubscribe();
    };
  }, []);

  async function signIn(email: string, password: string): Promise<void> {
    if (!supabase) throw new Error('A autenticação não está configurada. Contate o responsável pelo sistema.');
    setError(null);
    try {
      const { error: signInError } = await supabase.auth.signInWithPassword({ email, password });
      if (signInError) throw new Error('E-mail ou senha inválidos.');
    } catch (signInError: unknown) {
      const message = signInError instanceof Error ? signInError.message : 'Não foi possível entrar.';
      setError(message);
      throw new Error(message, { cause: signInError });
    }
  }

  async function signOut(): Promise<void> {
    if (!supabase) return;
    try {
      const { error: signOutError } = await supabase.auth.signOut();
      if (signOutError) throw signOutError;
    } catch {
      setError('Não foi possível encerrar a sessão. Tente novamente.');
    }
  }

  return (
    <AuthContext.Provider value={{ session, loading, error, signIn, signOut }}>
      {children}
    </AuthContext.Provider>
  );
}
