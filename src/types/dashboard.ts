export interface User {
  id: number;
  name: string;
  email: string;
  role: string;
  status: 'Ativo' | 'Pendente' | 'Inativo';
}

export interface StatCardProps {
  title: string;
  value: string;
  change: string;
  isPositive: boolean;
  icon: string;
  comparisonLabel?: string;
  detail?: string;
}

export type TabId = 'dashboard' | 'analytics' | 'users';

export interface SidebarProps {
  activeTab: TabId;
  setActiveTab: (tab: TabId) => void;
}