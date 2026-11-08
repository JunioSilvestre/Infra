# 06 — Publicador Automatizado de Bibliotecas JavaScript/TypeScript Escopadas (@corp/pkg)

## 🏢 Cenário de Produção e Vida Real
Distribuição de componentes compartilhados e design systems internos para equipes de frontend.

### ⚠️ O Problema Real
Publicação manual de pacotes no npm quebra a esteira se o número de versão não for incrementado.

## 🚀 Arquitetura e Engenharia de CI/CD
Configuração de .npmrc com token de autenticação via variável de ambiente, compilação de arquivos de tipos TypeScript (.d.ts), geração de source maps e publicação via 'npm publish --access restricted'.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`npm, pnpm, tsc`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
pnpm publish --filter @my-corp/ui --access restricted
```
