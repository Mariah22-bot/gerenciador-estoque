import type { JSX } from 'react';
import Icon from './Icon';

export default function Header(): JSX.Element {
    return (
        <header className="flex h-[42px] items-center justify-between bg-black px-3 text-white sm:px-4">
            <div />
            <div className="flex items-center gap-4">
                <div className="relative hidden sm:block">
                    <Icon name="search" size={12} className="absolute left-2 top-2 text-slate-300" />
                    <input
                        type="search" placeholder="Buscar SKU ou produto..."
                        className="w-48 rounded-full border border-slate-700 bg-transparent py-1 pl-7 pr-3 text-[9px] text-white outline-none focus:border-slate-400"
                    />
                </div>
                <Icon name="moon" size={13} className="hidden text-slate-300 sm:block" />
                <Icon name="bell" size={13} className="hidden text-slate-300 sm:block" />
                <div className="flex items-center gap-2 border-l border-slate-700 pl-3">
                    <div className="h-5 w-5 rounded-full bg-[#087f8c] text-[8px] flex items-center justify-center">MFF</div>
                    <span className="text-[8px] sm:text-[9px]">MFF ENXOVAIS</span>
                </div>
            </div>
        </header>
    );
}