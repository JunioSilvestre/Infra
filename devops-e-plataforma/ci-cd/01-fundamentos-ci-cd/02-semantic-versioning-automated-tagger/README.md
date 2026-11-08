# 02 — Versionamento Semântico Automatizado baseado em Conventional Commits

## 🏢 Cenário de Produção e Vida Real
Automação de releases para bibliotecas e microsserviços sem intervenção humana no cálculo de versões.

### ⚠️ O Problema Real
Desenvolvedores esquecem de atualizar o arquivo de versão ou pulam versões acidentalmente.

## 🚀 Arquitetura e Engenharia de CI/CD
Parsing de histórico git desde a última tag, identificação de prefixos feat (minor), fix (patch) e BREAKING CHANGE (major), geração automática de release notes e changelog.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`semantic-release, git, standard-version`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
npx semantic-release --dry-run
```
