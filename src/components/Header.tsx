import { useEffect, useState, type JSX } from 'react';
import Icon from './Icon';

interface HeaderProps {
    userEmail?: string;
    onSignOut?: () => void;
}

export default function Header({ userEmail, onSignOut }: HeaderProps): JSX.Element {
    const [isDarkMode, setIsDarkMode] = useState(
        () => window.localStorage.getItem('theme') === 'dark',
    );

    useEffect(() => {
        document.documentElement.classList.toggle('dark', isDarkMode);
        window.localStorage.setItem('theme', isDarkMode ? 'dark' : 'light');
    }, [isDarkMode]);

    return (
        <header className="flex h-[70px] items-center justify-end bg-black px-3 text-white sm:px-4">
            <div className="flex items-center gap-4">
                <button
                    type="button"
                    onClick={() => setIsDarkMode((current) => !current)}
                    aria-label={isDarkMode ? 'Ativar modo claro' : 'Ativar modo noturno'}
                    aria-pressed={isDarkMode}
                    className="rounded-full p-2 text-slate-300 transition-colors hover:bg-slate-800 hover:text-white focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-white"
                >
                    <Icon name={isDarkMode ? 'sun' : 'moon'} size={24} />
                </button>
                <div className="flex items-center gap-2 border-l border-slate-700 pl-3">
                    <div className="flex h-7 w-7 items-center justify-center rounded-full bg-[#087f8c] text-[10px]">MFF</div>
                    <span className="text-xs">MFF ENXOVAIS</span>
                </div>
                {userEmail && onSignOut && (
                    <div className="flex items-center gap-2 border-l border-slate-700 pl-3">
                        <span className="hidden max-w-48 truncate text-xs text-slate-300 sm:inline">{userEmail}</span>
                        <button type="button" onClick={onSignOut} className="rounded px-2 py-1 text-xs text-slate-300 hover:bg-slate-800 hover:text-white">
                            Sair
                        </button>
                    </div>
                )}
            </div>
        </header>
    );
}