# Gerenciador de estoque

Dashboard de monitoramento de estoque com React, Tailwind CSS, Express, TypeScript e PostgreSQL.

## Configuração

1. Instale o PostgreSQL e crie um banco chamado `gerenciador_estoque`.
2. Configure `DATABASE_URL` no arquivo `.env`. Não versione nem compartilhe esse arquivo.
3. Instale as dependências com `npm install`.
4. Inicialize o banco com `npm run db:init`.

## Execução

Inicie a API e o frontend em terminais separados:

```bash
npm run server:dev
npm run dev
```

A API fica disponível em `http://localhost:3000`. O endpoint `GET /api/health` verifica a conexão com o banco.

## Banco de dados

`npm run db:init` aplica o esquema em uma transação e preserva os dados de estoque e movimentações. Se encontrar o esquema antigo (`products`), migra os produtos e movimentações para `estoque` e renomeia a tabela original para `products_legacy_archive`. Se as tabelas antigas e novas já tiverem dados simultaneamente, a inicialização é cancelada para evitar uma mesclagem ambígua.

Para substituir o catálogo pela planilha atual, faça um backup e execute `python importar_excel.py --replace`. A operação substitui também as movimentações ativas, pois elas dependem dos IDs dos produtos. O modo exige 252 produtos, preço preenchido em todos e chaves sem duplicatas.

## Verificações

```bash
npm run build
npm run server:typecheck
npm run lint
```
