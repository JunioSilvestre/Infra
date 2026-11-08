# 15 — Orquestrador de Versões e Publicação para Monorepos com Changesets

## 🏢 Cenário de Produção e Vida Real
Monorepos com pacotes independentes (ex: design-system, sdk, api-client) que necessitam de versionamento independente.

### ⚠️ O Problema Real
Saber exatamente quais pacotes devem ter suas versões incrementadas a cada merge.

## 🚀 Arquitetura e Engenharia de CI/CD
Integração com Changesets (@changesets/action): desenvolvedores adicionam arquivos de changeset no PR, e o workflow na main consome as mudanças, cria um 'Version PR' e publica os pacotes modificados.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`changesets, pnpm, npm`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
npx changeset status
```
