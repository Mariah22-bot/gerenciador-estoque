import type { JSX } from 'react/jsx-runtime';
import type { User } from '../types/dashboard';

const users: User[] = [
    { id: 1, name: 'Divino Sol', email: 'divino@example.com', role: 'Gerente', status: 'Ativo' },
    { id: 2, name: 'Rainha Lua', email: 'rainha@example.com', role: 'Designer', status: 'Ativo' },
    { id: 3, name: 'Carlos Silva', email: 'carlos@example.com', role: 'Desenvolvedor', status: 'Pendente' },
    { id: 4, name: 'Ana Souza', email: 'ana@example.com', role: 'Suporte', status: 'Inativo' },
];

export default function UserTable(): JSX.Element {
    return (
        <div className="bg-white rounded-xl shadow-sm border border-gray-100 overflow-hidden">
            <div className="px-6 py-4 border-b border-gray-100 flex justify-between items-center">
                <h2 className="text-lg font-bold text-gray-800">Usuários Recentes</h2>
                <button className="text-sm font-semibold text-indigo-600 hover:text-indigo-800 transition-colors">Ver todos</button>
            </div>

            <div className="overflow-x-auto">
                <table className="w-full text-left text-sm text-gray-600">
                    <thead className="bg-gray-50 text-xs uppercase text-gray-400 font-semibold border-b border-gray-100">
                        <tr>
                            <th className="px-6 py-3">Nome</th>
                            <th className="px-6 py-3">Email</th>
                            <th className="px-6 py-3">Cargo</th>
                            <th className="px-6 py-3">Status</th>
                        </tr>
                    </thead>
                    <tbody className="divide-y divide-gray-100">
                        {users.map((user) => (
                            <tr key={user.id} className="hover:bg-gray-50/50 transition-colors">
                                <td className="px-6 py-4 font-semibold text-gray-800">{user.name}</td>
                                <td className="px-6 py-4">{user.email}</td>
                                <td className="px-6 py-4">{user.role}</td>
                                <td className="px-6 py-4">
                                    <span className={`inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-semibold ${user.status === 'Ativo' ? 'bg-emerald-100 text-emerald-700' :
                                            user.status === 'Pendente' ? 'bg-amber-100 text-amber-700' : 'bg-rose-100 text-rose-700'
                                        }`}>
                                        {user.status}
                                    </span>
                                </td>
                            </tr>
                        ))}
                    </tbody>
                </table>
            </div>
        </div>
    );
}