# 14 — Monitor e Limitador de Gastos de Minutos de CI/CD para Controle de Orçamento

## 🏢 Cenário de Produção e Vida Real
Prevenção de faturas surpresa em nuvens de CI (GitHub Actions, CircleCI) por loops ou runners ociosos.

### ⚠️ O Problema Real
Um loop infinito em um teste de integração consome todo o pacote mensal de minutos de CI em uma noite.

## 🚀 Arquitetura e Engenharia de CI/CD
Consulta diária à API de faturamento do GitHub/GitLab, cálculo do consumo percentual e bloqueio preventivo de jobs de branches secundárias ao atingir 90% do orçamento.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`curl, jq, mailx, bc`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
./check_ci_budget.sh --org my-org --limit-dollars 500
```
