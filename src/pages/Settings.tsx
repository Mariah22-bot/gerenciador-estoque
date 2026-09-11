import type { JSX } from 'react';

function Toggle({ checked }: { checked: boolean }): JSX.Element {
    return (
        <button
            type="button"
            aria-label="Alternar configuração"
            className={`relative inline-flex h-6 w-11 items-center rounded-full transition ${checked ? 'bg-[#007d8b]' : 'bg-slate-300'}`}
        >
            <span className={`inline-block h-4 w-4 rounded-full bg-white transition ${checked ? 'translate-x-6' : 'translate-x-1'}`} />
        </button>
    );
}

export default function Settings(): JSX.Element {
    return (
        <div className="mx-auto max-w-[1120px] space-y-4">
            <div className="flex flex-col gap-2 sm:flex-row sm:items-center sm:justify-between">
                <div>
                    <h1 className="text-lg font-semibold text-slate-800">Configurações</h1>
                    <p className="text-xs text-slate-500">Ajuste os dados da loja, alertas e integrações do estoque.</p>
                </div>
                <button type="button" className="rounded bg-[#007d8b] px-3 py-2 text-[10px] font-medium text-white hover:bg-[#006c78]">
                    Salvar alterações
                </button>
            </div>

            <div className="grid gap-4 lg:grid-cols-[1.3fr_0.7fr]">
                <section className="rounded-xl border border-slate-200 bg-white p-4 shadow-sm">
                    <h2 className="text-sm font-semibold text-slate-800">Dados da loja</h2>
                    <div className="mt-4 grid gap-3 md:grid-cols-2">
                        <label className="text-[10px] font-medium text-slate-700">
                            Nome da loja
                            <input defaultValue="Estoque ML" className="mt-1 w-full rounded border border-slate-200 px-2 py-2 text-xs text-slate-700 outline-none focus:border-[#007d8b]" />
                        </label>
                        <label className="text-[10px] font-medium text-slate-700">
                            CNPJ
                            <input defaultValue="12.345.678/0001-90" className="mt-1 w-full rounded border border-slate-200 px-2 py-2 text-xs text-slate-700 outline-none focus:border-[#007d8b]" />
                        </label>
                        <label className="text-[10px] font-medium text-slate-700 md:col-span-2">
                            Endereço
                            <input defaultValue="Rua das Flores, 120 - Centro, São Paulo/SP" className="mt-1 w-full rounded border border-slate-200 px-2 py-2 text-xs text-slate-700 outline-none focus:border-[#007d8b]" />
                        </label>
                        <label className="text-[10px] font-medium text-slate-700">
                            Fuso horário
                            <select defaultValue="America/Sao_Paulo" className="mt-1 w-full rounded border border-slate-200 px-2 py-2 text-xs text-slate-700 outline-none focus:border-[#007d8b]">
                                <option value="America/Sao_Paulo">(UTC-03:00) São Paulo</option>
                                <option value="America/Brasilia">(UTC-03:00) Brasília</option>
                                <option value="UTC">(UTC+00:00) UTC</option>
                            </select>
                        </label>
                        <label className="text-[10px] font-medium text-slate-700">
                            Moeda padrão
                            <select defaultValue="BRL" className="mt-1 w-full rounded border border-slate-200 px-2 py-2 text-xs text-slate-700 outline-none focus:border-[#007d8b]">
                                <option value="BRL">Real (BRL)</option>
                                <option value="USD">Dólar (USD)</option>
                            </select>
                        </label>
                    </div>
                </section>

                <aside className="space-y-4">
                    <section className="rounded-xl border border-slate-200 bg-white p-4 shadow-sm">
                        <h2 className="text-sm font-semibold text-slate-800">Sincronização</h2>
                        <div className="mt-3 space-y-3 text-[10px] text-slate-600">
                            <div className="flex items-center justify-between rounded border border-slate-200 bg-slate-50 px-2 py-2">
                                <span>Mercado Livre</span>
                                <Toggle checked={true} />
                            </div>
                            <div className="flex items-center justify-between rounded border border-slate-200 bg-slate-50 px-2 py-2">
                                <span>Email de alertas</span>
                                <Toggle checked={true} />
                            </div>
                            <div className="flex items-center justify-between rounded border border-slate-200 bg-slate-50 px-2 py-2">
                                <span>WhatsApp</span>
                                <Toggle checked={false} />
                            </div>
                        </div>
                    </section>

                    <section className="rounded-xl border border-slate-200 bg-white p-4 shadow-sm">
                        <h2 className="text-sm font-semibold text-slate-800">Alertas de estoque</h2>
                        <div className="mt-3 space-y-3">
                            <label className="block text-[10px] font-medium text-slate-700">
                                Estoque mínimo global
                                <input defaultValue="15" className="mt-1 w-full rounded border border-slate-200 px-2 py-2 text-xs text-slate-700 outline-none focus:border-[#007d8b]" />
                            </label>
                            <label className="block text-[10px] font-medium text-slate-700">
                                Email para alertas
                                <input defaultValue="financeiro@estoqueml.com" className="mt-1 w-full rounded border border-slate-200 px-2 py-2 text-xs text-slate-700 outline-none focus:border-[#007d8b]" />
                            </label>
                        </div>
                    </section>
                </aside>
            </div>
        </div>
    );
}
