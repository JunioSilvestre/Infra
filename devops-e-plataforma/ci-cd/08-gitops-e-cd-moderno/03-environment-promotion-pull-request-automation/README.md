# 03 — Automação de Promoção de Ambientes (Dev -> Staging -> Prod) via Pull Requests

## 🏢 Cenário de Produção e Vida Real
Controle de versões em repositórios de configuração GitOps através do fluxo padrão de aprovação de PRs.

### ⚠️ O Problema Real
Edição manual de tags de imagem em arquivos YAML de ambientes de produção propensa a erros de digitação.

## 🚀 Arquitetura e Engenharia de CI/CD
Automação que, após a aprovação de testes em staging, abre automaticamente um PR no repositório GitOps atualizando a tag da imagem na pasta de produção com resumo do diff.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`git, gh-cli, yq, bash`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
./promote_gitops.sh --app payment-service --from staging --to production --version v2.1.0
```
