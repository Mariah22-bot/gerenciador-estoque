import type { JSX } from 'react';
import Icon from './Icon';

export default function Header(): JSX.Element {
    return (
        <header className="h-[42px] flex items-center justify-between bg-black px-4 text-white">
            <div />
            <div className="flex items-center gap-4">
                <div className="relative">
                    <Icon name="search" size={12} className="absolute left-2 top-2 text-slate-300" />
                    <input
                        type="search" placeholder="Buscar SKU ou produto..."
                        className="w-48 rounded-full border border-slate-700 bg-transparent py-1 pl-7 pr-3 text-[9px] text-white outline-none focus:border-slate-400"
                    />
                </div>
                <Icon name="moon" size={13} className="text-slate-300" />
                <Icon name="bell" size={13} className="text-slate-300" />
                <div className="flex items-center gap-2 border-l border-slate-700 pl-3">
                    <div className="h-5 w-5 rounded-full bg-[#087f8c] text-[8px] flex items-center justify-center">VF</div>
                    <span className="text-[9px]">Vitor Filho</span>
                </div>
            </div>
        </header>
    );
}