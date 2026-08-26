import type { JSX } from "react/jsx-runtime";

export default function AnalyticsChart(): JSX.Element {
    const bars: number[] = [40, 65, 30, 85, 95, 75, 50, 60, 90, 70, 45, 80];

    return (
        <div className="bg-white rounded-xl p-6 shadow-sm border border-gray-100 flex flex-col justify-between">
            <div className="flex justify-between items-center mb-6">
                <div>
                    <h2 className="text-lg font-bold text-gray-800">Desempenho Geral</h2>
                    <p className="text-xs text-gray-400">Atividade mensal do sistema</p>
                </div>
                <span className="text-xs bg-indigo-50 text-indigo-600 font-bold px-3 py-1 rounded-full">Ano 2026</span>
            </div>

            <div className="h-48 flex items-end justify-between gap-2 pt-4 border-b border-gray-100 pb-2">
                {bars.map((height, idx) => (
                    <div key={idx} className="w-full flex flex-col items-center gap-2 group">
                        <div
                            style={{ height: `${height}%` }}
                            className="w-full bg-indigo-500 rounded-t-md group-hover:bg-indigo-600 transition-all"
                        />
                    </div>
                ))}
            </div>

            <div className="flex justify-between text-xs text-gray-400 mt-2 font-medium">
                <span>Jan</span><span>Fev</span><span>Mar</span><span>Abr</span>
                <span>Mai</span><span>Jun</span><span>Jul</span><span>Ago</span>
                <span>Set</span><span>Out</span><span>Nov</span><span>Dez</span>
            </div>
        </div>
    );
}