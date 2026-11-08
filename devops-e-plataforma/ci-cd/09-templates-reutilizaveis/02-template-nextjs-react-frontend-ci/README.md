# 02 — Template Reutilizável de CI/CD para Aplicações Frontend Next.js e React

## 🏢 Cenário de Produção e Vida Real
Esteira otimizada para compilação e teste de aplicações web modernas com TypeScript.

### ⚠️ O Problema Real
Builds de frontend lentos por falta de cache do Next.js (.next/cache) e quebras de CSS em produção.

## 🚀 Arquitetura e Engenharia de CI/CD
Template cobrindo: instalação determinística (pnpm/npm ci), cache de compilação Next.js, verificação estrita de TypeScript (tsc --noEmit), linting ESLint, testes unitários Vitest/Jest e build estático/container.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`pnpm, next, tsc, eslint`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
pnpm build && pnpm test --run
```
