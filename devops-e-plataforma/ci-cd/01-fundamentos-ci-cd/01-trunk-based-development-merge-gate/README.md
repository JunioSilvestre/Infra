# 01 — Portão de Trunk-Based Development com Short-Lived Feature Branches

## 🏢 Cenário de Produção e Vida Real
Equipes de alta performance migrando de GitFlow tradicional (branches com semanas de vida) para Trunk-Based Development com merges frequentes na main.

### ⚠️ O Problema Real
Branches antigas geram 'merge hell' e conflitos insolúveis que atrasam lançamentos.

## 🚀 Arquitetura e Engenharia de CI/CD
Validação de idade máxima de branches (rejeição de PRs com mais de 48h sem rebase), checks de linearidade de histórico (--ff-only) e testes rápidos obrigatórios.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`git, github-actions, bash`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
./check_branch_age.sh --max-hours 48 --base origin/main
```
