# 13 — Auditor e Enforcer de Período de Retenção de Log Groups no AWS CloudWatch

## 🏢 Cenário de Negócios e Produção Real
Controle de despesas em infraestruturas serverless (AWS Lambda, ECS, API Gateway).

### ⚠️ O Problema Real
Log Groups criados por padrão têm retenção 'Never Expire', acumulando terabytes de logs inúteis e gerando faturas elevadíssimas.

## 🚀 Arquitetura e Engenharia em Bash
Listagem de todos os grupos de log via 'aws logs describe-log-groups', identificação dos grupos sem retentionInDays definido, aplicação imediata da política corporativa (ex: 14 dias para dev, 90 dias para prod) e relatório de economia gerada.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`aws, jq, awk`

## 📌 Exemplo de Execução CLI
```bash
./cloudwatch_retention.sh --days 30 --apply-all --dry-run
```
