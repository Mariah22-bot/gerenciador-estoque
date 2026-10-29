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

A API fica disponível em `http://localhost:3000` (ou na porta definida por `PORT`). O endpoint `GET /api/health` verifica a conexão com o banco. O frontend do Vite encaminha as chamadas `/api` para a API local.

## Uso local

A API local usa o PostgreSQL indicado por `DATABASE_URL` no arquivo `.env`. Os dados não são enviados à Vercel: a pasta `api` não contém uma função serverless e o proxy para `localhost:3000` em `vite.config.ts` só funciona durante o desenvolvimento local.

Para ver os produtos neste computador, mantenha o PostgreSQL em execução e inicie `npm run server:dev` e `npm run dev` em terminais separados. Acesse o endereço local mostrado pelo Vite, normalmente `http://localhost:5173`. A publicação estática na Vercel não terá acesso a esta API ou banco local.

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
