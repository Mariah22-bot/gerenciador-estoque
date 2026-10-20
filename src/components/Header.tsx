import type { JSX } from 'react';
import Icon from './Icon';

export default function Header(): JSX.Element {
    return (
        <header className="flex h-[70px] items-center justify-between bg-black px-3 text-white sm:px-4">
            <div />
            <div className="flex items-center gap-4">
                <div className="relative hidden sm:block">
                </div>
                <Icon name="moon" size={30} className="hidden text-slate-300 sm:block" />
                <div className="flex items-center gap-2 border-l border-slate-700 pl-3">
                    <div className="flex h-7 w-7 items-center justify-center rounded-full bg-[#087f8c] text-[10px]">MFF</div>
                    <span className="text-xs">MFF ENXOVAIS</span>
                </div>
            </div>
        </header>
    );
}