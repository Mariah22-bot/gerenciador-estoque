import type { JSX } from "react/jsx-runtime";

export default function Header(): JSX.Element {
    return (
        <header className="flex items-center justify-between bg-white px-6 py-4 shadow-sm border-b border-gray-100">
            <div className="flex items-center space-x-4">
                <h1 className="text-xl font-bold text-gray-800">Painel de Controle</h1>
            </div>

            <div className="flex items-center space-x-4">
                <div className="relative">
                    <input
                        type="text"
                        placeholder="Buscar..."
                        className="w-64 rounded-lg border border-gray-200 bg-gray-50 px-4 py-2 text-sm text-gray-700 outline-none focus:border-indigo-500 focus:bg-white transition-all"
                    />
                </div>

                <div className="flex items-center space-x-3 border-l border-gray-200 pl-4">
                    <div className="h-9 w-9 rounded-full bg-indigo-600 font-semibold text-white flex items-center justify-center">
                        M
                    </div>
                    <div className="flex flex-col">
                        <span className="text-sm font-semibold text-gray-800">MariÁH</span>
                        <span className="text-xs text-gray-500">Administrador</span>
                    </div>
                </div>
            </div>
        </header>
    );
}