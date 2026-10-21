# Gerenciador de estoque

Dashboard de monitoramento de estoque com React, Tailwind CSS, Express, TypeScript e PostgreSQL.

## Requisitos

- Node.js `20.19+` ou `22.12+` e npm.
- PostgreSQL.
- Python 3.10+ apenas para importar produtos de planilhas.

## Configuração

1. Instale o PostgreSQL e crie um banco chamado `gerenciador_estoque`.
2. Na raiz do projeto, copie `.env.example` para `.env` e configure a URL do PostgreSQL local, os dados do Supabase Auth e os e-mails autorizados:

   ```env
   DATABASE_URL=postgresql://USUARIO:SENHA@localhost:5432/gerenciador_estoque
   ```

   Além da URL do banco, configure `SUPABASE_URL`, `SUPABASE_PUBLISHABLE_KEY`, `AUTHORIZED_EMAILS`, `VITE_SUPABASE_URL` e `VITE_SUPABASE_PUBLISHABLE_KEY` conforme `.env.example`. Use a chave **publishable**, nunca a `service_role`. `AUTHORIZED_EMAILS` é a lista separada por vírgulas das contas permitidas a acessar esse estoque. Não versione nem compartilhe `.env`. Para autenticar, crie as contas manualmente no Supabase e desative o cadastro público de usuários.
3. Instale as dependências JavaScript com `npm install`.
4. Inicialize o banco com `npm run db:init`.

## Execução

Inicie a API e o frontend em terminais separados, na raiz do projeto:

```bash
npm run server:dev
npm run dev
```

A API fica disponível em `http://localhost:3000` (ou na porta definida por `PORT`). Todas as rotas `/api`, inclusive `/api/health`, exigem uma sessão Supabase válida e uma conta listada em `AUTHORIZED_EMAILS`. O frontend do Vite encaminha as chamadas `/api` para a API local.

## Demonstração pública na Vercel

O modo demo usa somente dados fictícios. Visitantes podem alterá-los, mas as mudanças ficam no armazenamento local do navegador e não são enviadas ao backend. O botão **Restaurar demonstração** repõe os dados iniciais. Em produção, o modo demo é o padrão seguro; para habilitar a aplicação real, defina explicitamente `VITE_DEMO_MODE=false`.

O Vercel serve o frontend estático de `dist` e a função Express em `api/[...route].ts`. Para manter a demonstração pública separada, use projetos Vercel distintos conectados ao mesmo repositório:

- **Demonstração pública:** `VITE_DEMO_MODE=true`; não configure `API_ENABLED`, `DATABASE_URL`, `SUPABASE_URL`, `SUPABASE_PUBLISHABLE_KEY` nem `AUTHORIZED_EMAILS`.
- **Aplicação privada do cliente:** `VITE_DEMO_MODE=false`, `VITE_SUPABASE_URL`, `VITE_SUPABASE_PUBLISHABLE_KEY`, `API_ENABLED=true`, `DATABASE_URL`, `SUPABASE_URL`, `SUPABASE_PUBLISHABLE_KEY` e `AUTHORIZED_EMAILS`. Configure o build como `npm run build` e a saída estática como `dist`.

`API_ENABLED` faz a função responder 404 quando não estiver habilitada. Mesmo no projeto privado, a API valida o token do Supabase e confere o e-mail em `AUTHORIZED_EMAILS`; proteger apenas a página da Vercel não substitui essas verificações. No Supabase, desative o cadastro público e crie apenas os usuários autorizados. Nunca coloque `DATABASE_URL` ou uma chave `service_role` em variáveis `VITE_*`. Configure Deployment Protection da Vercel como camada adicional se disponível no plano, mantendo o login da aplicação habilitado.

Para o banco de produção, crie um projeto PostgreSQL hospedado no Supabase e migre uma cópia dos dados locais após fazer backup. Use a connection string do pooler recomendada pelo Supabase para funções serverless. Mantenha o banco local separado para desenvolvimento. A publicação e a migração exigem configurar as credenciais nos respectivos painéis; não use a senha local nem publique o arquivo `.env`.

## Banco de dados

`npm run db:init` aplica o esquema em uma transação, preservando produtos e movimentações. Também remove as colunas legadas `codigo` e `fonte` da tabela de estoque. Se encontrar o esquema antigo (`products`), migra produtos e movimentações para `estoque` e renomeia a tabela original para `products_legacy_archive`. Se as tabelas antigas e novas já tiverem dados simultaneamente, a inicialização é cancelada para evitar uma mesclagem ambígua.

## Importação de planilha

A importação requer Python e os pacotes `pandas`, `openpyxl` e `psycopg2-binary`:

```bash
python -m pip install pandas openpyxl psycopg2-binary
```

O script usa `DATABASE_URL` do ambiente ou do arquivo `.env`. Por padrão, lê `produtos-estoque.xlsx` na raiz. Para importar essa planilha, execute `python importar_excel.py`; para informar outra, passe o caminho como argumento, por exemplo `python importar_excel.py caminho/para/produtos.xlsx`.

Sem `--replace`, o script atualiza produtos correspondentes ou insere novos. A importação ajusta o saldo informado na planilha diretamente e não cria registros de movimentação. Se um produto correspondente já tiver movimentações, a importação é cancelada para preservar o histórico.

Para substituir o catálogo, faça primeiro um backup do banco e execute `python importar_excel.py --replace`. Essa operação remove todos os produtos e movimentações ativos antes da importação. Exige exatamente 252 produtos, preço preenchido em todos e chaves de produto sem duplicatas. O arquivo de backup não é criado automaticamente.

## Verificações

```bash
npm run build
npm run server:typecheck
npm run lint
```
