import type { JSX } from 'react';
import Icon from './Icon';

const movements = [
    ['MLB-4828-FTW', 'Fone Bluetooth TWS Pro', 'Saída', '-48', '26/08/26, 14:32', 'Alta'],
    ['MLB-1193-SCV', 'Suporte Celular Veicular Magn...', 'Entrada', '+300', '26/08/26, 11:05', 'Alta'],
    ['MLB-7741-HUB', 'Hub HDMI 4 Portas 4K', 'Entrada', '+25', '25/08/26, 16:48', 'Baixa'],
    ['MLB-3392-CUB', 'Cabo USB-C Nylon 2m', 'Saída', '-120', '25/08/26, 09:20', 'Alta'],
    ['MLB-6650-TKM', 'Teclado Mecânico RGB Switch...', 'Saída', '-4', '24/08/26, 18:12', 'Baixa'],
    ['MLB-2287-SWD', 'Smartwatch D20 Preto', 'Saída', '-63', '24/08/26, 13:40', 'Média'],
    ['MLB-5514-WFC', 'Webcam Full HD com Microfone', 'Entrada', '+60', '23/08/26, 10:02', 'Baixa'],
    ['MLB-9383-SCP', 'Caixa de Som Portátil 20W', 'Saída', '-11', '22/08/26, 15:27', 'Média'],
];

export default function UserTable(): JSX.Element {
    return (
        <div className="overflow-hidden rounded-lg border border-slate-200 bg-white">
            <div className="flex items-center justify-between border-b border-slate-200 px-3 py-2">
                <div><h2 className="text-xs font-semibold text-slate-800">Movimentações recentes</h2><p className="text-[9px] text-slate-500">Entradas e saídas registradas nos últimos 7 dias</p></div>
                <button className="flex items-center gap-1 rounded bg-[#007d8b] px-2 py-1 text-[9px] text-white hover:bg-[#006c78]"><Icon name="plus" size={10} />Registrar nova movimentação</button>
            </div>
            <div className="flex gap-1 border-b border-slate-100 px-3 py-2"><div className="relative"><Icon name="search" size={11} className="absolute left-2 top-1.5 text-slate-400" /><input placeholder="Filtrar por SKU ou produto..." className="w-48 rounded border border-slate-200 py-1 pl-6 pr-2 text-[9px] outline-none" /></div><button className="flex items-center gap-1 rounded border border-slate-200 px-2 text-[9px] text-slate-600"><Icon name="filter" size={10} />Todos os tipos</button><span className="ml-auto self-center text-[8px] text-slate-500">8 de 8 registros</span></div>
            <div className="overflow-x-auto">
                <table className="w-full min-w-[650px] text-left text-[9px] text-slate-600">
                    <thead className="border-b border-slate-200 bg-slate-50 text-[8px] text-slate-700">
                        <tr>
                            <th className="px-3 py-2">Código SKU</th><th className="px-3 py-2">Produto</th><th className="px-3 py-2">Tipo</th><th className="px-3 py-2">Qtd.</th><th className="px-3 py-2">Data</th><th className="px-3 py-2">Rotatividade</th>
                        </tr>
                    </thead>
                    <tbody className="divide-y divide-slate-100">
                        {movements.map(([sku, product, type, quantity, date, rotation]) => (
                            <tr key={sku} className="hover:bg-slate-50"><td className="px-3 py-1.5 font-mono text-[8px] text-slate-500">{sku}</td><td className="px-3 py-1.5 font-medium text-slate-800">{product}</td><td className="px-3 py-1.5"><span className={`rounded-full px-1.5 py-0.5 text-[8px] ${type === 'Entrada' ? 'bg-cyan-50 text-[#007d8b]' : 'bg-orange-50 text-[#d98900]'}`}>{type === 'Entrada' ? '↙ ' : '↗ '}{type}</span></td><td className="px-3 py-1.5 text-right font-medium">{quantity}</td><td className="px-3 py-1.5 text-slate-500">{date}</td><td className="px-3 py-1.5"><span className={`rounded-full px-2 py-0.5 text-[8px] ${rotation === 'Alta' ? 'bg-cyan-50 text-[#007d8b]' : rotation === 'Média' ? 'bg-orange-50 text-[#d98900]' : 'bg-rose-50 text-rose-500'}`}>{rotation}</span></td>
                            </tr>
                        ))}
                    </tbody>
                </table>
            </div>
        </div>
    );
}