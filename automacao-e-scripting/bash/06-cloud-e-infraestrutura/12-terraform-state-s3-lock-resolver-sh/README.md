# 12 — Auditor e Resolvedor Seguro de Travamentos (Locks) do Terraform State no AWS DynamoDB

## 🏢 Cenário de Negócios e Produção Real
Pipelines de CI/CD concorrentes onde uma execução do Terraform sofreu crash e deixou o estado travado.

### ⚠️ O Problema Real
Todos os futuros deploys de infraestrutura ficam permanentemente bloqueados com erro 'Error acquiring the state lock'.

## 🚀 Arquitetura e Engenharia em Bash
Inspeção da tabela de locks no DynamoDB via AWS CLI, extração do Lock ID e metadados de quem originou a trava, verificação se o processo do executor ainda está vivo e execução de 'terraform force-unlock' ou remoção cirúrgica do item no DynamoDB com auditoria.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`aws, terraform, jq, date`

## 📌 Exemplo de Execução CLI
```bash
./tf_lock_resolver.sh --table terraform-locks --state-file prod/terraform.tfstate --force
```
