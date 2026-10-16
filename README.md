# Gerenciador de estoque

Dashboard de monitoramento do giro de estoque com React, TailwindCSS, Express, TypeScript e PostgreSQL.

## Backend local

1. Instale o PostgreSQL e crie um banco chamado `gerenciador_estoque`.
2. Copie `.env.example` para `.env` e configure `DATABASE_URL`, `APP_USERNAME` e `APP_PASSWORD` com os valores da empresa. Gere um segredo aleatório de pelo menos 32 caracteres para `SESSION_SECRET`; por exemplo, execute `node -e "console.log(require('node:crypto').randomBytes(48).toString('base64'))"` e use o resultado. Não compartilhe nem versione o arquivo `.env`.
3. Inicialize as tabelas:

  `npm run db:init`

4. Inicie a API:

  `npm run server:dev`

A API ficará disponível em `http://localhost:3000`. O endpoint `GET /api/health` verifica a conexão com o banco. Os endpoints `GET /api/products` e `GET /api/movements` consultam os dados de estoque.

O aplicativo solicita um único usuário e uma única senha, definidos no servidor por `APP_USERNAME` e `APP_PASSWORD`. Após o login, a sessão expira em 8 horas e é armazenada em um cookie `HttpOnly`; a API de estoque exige essa sessão. Em produção, publique o aplicativo por HTTPS para que o cookie também seja marcado como seguro.

`npm run db:init` aplica o esquema em uma transação e não apaga tabelas. Se encontrar o esquema antigo (`products`), migra os produtos e as movimentações para `estoque` e renomeia a tabela original para `products_legacy_archive`, mantendo os dados antigos. SKUs, preços e quantidades mínimas são preservados. Se `products` e `estoque` já tiverem dados ao mesmo tempo, a inicialização é cancelada para evitar uma mesclagem ambígua; faça backup e resolva essa situação antes de continuar.

Para substituir o catálogo pela planilha padronizada atual, faça um backup do banco e execute `python importar_excel.py --replace`. Esse modo só aceita exatamente 252 produtos com preço e sem chaves duplicadas. Ele substitui também as movimentações ativas, pois elas dependem dos IDs dos produtos antigos; o backup preserva o estado anterior.

## Frontend

Inicie o frontend com `npm run dev`.

---

## Informações do template Vite

This template provides a minimal setup to get React working in Vite with HMR and some ESLint rules.

Currently, two official plugins are available:

- [@vitejs/plugin-react](https://github.com/vitejs/vite-plugin-react/blob/main/packages/plugin-react) uses [Oxc](https://oxc.rs)
- [@vitejs/plugin-react-swc](https://github.com/vitejs/vite-plugin-react/blob/main/packages/plugin-react-swc) uses [SWC](https://swc.rs/)

## React Compiler

The React Compiler is not enabled on this template because of its impact on dev & build performances. To add it, see [this documentation](https://react.dev/learn/react-compiler/installation).

## Expanding the ESLint configuration

If you are developing a production application, we recommend updating the configuration to enable type-aware lint rules:

```js
export default defineConfig([
  globalIgnores(['dist']),
  {
    files: ['**/*.{ts,tsx}'],
    extends: [
      // Other configs...

      // Remove tseslint.configs.recommended and replace with this
      tseslint.configs.recommendedTypeChecked,
      // Alternatively, use this for stricter rules
      tseslint.configs.strictTypeChecked,
      // Optionally, add this for stylistic rules
      tseslint.configs.stylisticTypeChecked,

      // Other configs...
    ],
    languageOptions: {
      parserOptions: {
        project: ['./tsconfig.node.json', './tsconfig.app.json'],
        tsconfigRootDir: import.meta.dirname,
      },
      // other options...
    },
  },
])

```

You can also install [eslint-plugin-react-x](https://npmx.dev/package/eslint-plugin-react-x) and [eslint-plugin-react-dom](https://npmx.dev/package/eslint-plugin-react-dom) for React-specific lint rules:

```js
// eslint.config.js
import reactX from 'eslint-plugin-react-x'
import reactDom from 'eslint-plugin-react-dom'

export default defineConfig([
  globalIgnores(['dist']),
  {
    files: ['**/*.{ts,tsx}'],
    extends: [
      // Other configs...
      // Enable lint rules for React
      reactX.configs['recommended-typescript'],
      // Enable lint rules for React DOM
      reactDom.configs.recommended,
    ],
    languageOptions: {
      parserOptions: {
        project: ['./tsconfig.node.json', './tsconfig.app.json'],
        tsconfigRootDir: import.meta.dirname,
      },
      // other options...
    },
  },
])

```
