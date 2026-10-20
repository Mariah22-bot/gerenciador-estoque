import type { JSX } from 'react';
import Icon from './Icon';

export default function Header(): JSX.Element {
    return (
        <header className="flex h-[70px] items-center justify-between bg-black px-3 text-white sm:px-4">
            <div />
            <div className="flex items-center gap-4">
                <div className="relative hidden sm:block">
                    <Icon name="search" size={12} className="absolute left-2 top-2 text-slate-300" />
                    <input
                        type="search" placeholder="Buscar SKU ou produto..."
                        className="w-56 rounded-full border border-slate-700 bg-transparent py-1.5 pl-7 pr-3 text-xs text-white outline-none focus:border-slate-400"
                    />
                </div>
                <Icon name="moon" size={13} className="hidden text-slate-300 sm:block" />
                <Icon name="bell" size={13} className="hidden text-slate-300 sm:block" />
                <div className="flex items-center gap-2 border-l border-slate-700 pl-3">
                    <div className="flex h-7 w-7 items-center justify-center rounded-full bg-[#087f8c] text-[10px]">MFF</div>
                    <span className="text-xs">MFF ENXOVAIS</span>
                </div>
            </div>
        </header>
    );
}