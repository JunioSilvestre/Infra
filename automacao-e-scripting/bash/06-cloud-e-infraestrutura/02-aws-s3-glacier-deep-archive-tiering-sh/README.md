# 02 — Gerenciador e Auditor de Transição de Ciclo de Vida S3 para Glacier Deep Archive

## 🏢 Cenário de Negócios e Produção Real
Armazenamento de terabytes de gravações telefônicas e backups contábeis com retenção legal de 7 anos.

### ⚠️ O Problema Real
Manter dados antigos na classe Standard do S3 gera contas de milhares de dólares por mês sem necessidade.

## 🚀 Arquitetura e Engenharia em Bash
Auditoria de objetos via AWS CLI e S3 Inventory, cálculo de custos por classe de armazenamento, aplicação programática de Lifecycle Policies (JSON) para transição automática para S3 Glacier Flexible e Deep Archive após 90 dias.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`aws, jq, bc, date`

## 📌 Exemplo de Execução CLI
```bash
./s3_lifecycle_audit.sh --bucket backup-corp-prod --apply-deep-archive-policy
```
