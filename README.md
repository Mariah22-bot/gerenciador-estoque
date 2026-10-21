# Gerenciador de estoque

Dashboard de monitoramento de estoque com React, Tailwind CSS, Express, TypeScript e PostgreSQL.

## Requisitos

- Node.js `20.19+` ou `22.12+` e npm.
- PostgreSQL.
- Python 3.10+ apenas para importar produtos de planilhas.

## Configuração

1. Instale o PostgreSQL e crie um banco chamado `gerenciador_estoque`.
2. Na raiz do projeto, crie `.env` com a URL de conexão do banco:

   ```env
   DATABASE_URL=postgresql://USUARIO:SENHA@localhost:5432/gerenciador_estoque
   ```

   Substitua `USUARIO` e `SENHA` pelos dados locais do PostgreSQL. Não versione nem compartilhe esse arquivo. A API usa a porta `3000` por padrão. Se definir outra porta com `PORT`, atualize também o destino do proxy em `vite.config.ts`.
3. Instale as dependências JavaScript com `npm install`.
4. Inicialize o banco com `npm run db:init`.

## Execução

Inicie a API e o frontend em terminais separados, na raiz do projeto:

```bash
npm run server:dev
npm run dev
```

A API fica disponível em `http://localhost:3000` (ou na porta definida por `PORT`). O endpoint `GET /api/health` verifica a conexão com o banco. O frontend do Vite encaminha as chamadas `/api` para a API local.

## Demonstração pública na Vercel

O build de produção (`npm run build`), usado pela Vercel, força o modo de demonstração: o site mostra somente produtos e movimentações fictícios, não faz chamadas à API nem acessa o banco, e não oferece ações para alterar dados. O aviso de demonstração também aparece na interface. Para visualizar esse modo durante o desenvolvimento local, defina `VITE_DEMO_MODE=true` no `.env`.

Na Vercel, importe o repositório como projeto Vite, use `npm run build` como comando de build e `dist` como diretório de saída. Não configure `DATABASE_URL` no projeto público da Vercel. O servidor Express em `server/` não é publicado pelo build estático do Vite; não o hospede publicamente apontando para o banco real do cliente, pois a API atual não possui autenticação. Se o cliente precisar de uma versão privada conectada ao estoque real, ela deverá ser hospedada separadamente com autenticação e autorização no backend.

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
