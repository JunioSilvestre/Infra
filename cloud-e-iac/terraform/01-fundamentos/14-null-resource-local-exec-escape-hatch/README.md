# Automação de Tarefas Operacionais com null_resource, triggers e local-exec

## 1. Cenário de Produção Real
Necessidade de registrar endpoints criados pelo Terraform em sistemas legados on-premise que não possuem provedor oficial de Terraform.

## 2. O Problema Real
Executar scripts pontuais de sincronização apenas quando o IP ou DNS do recurso sofrer alteração real.

## 3. Arquitetura e Engenharia da Solução
Uso de `null_resource` com bloco `triggers = { endpoint = aws_route53_record.api.fqdn }` disparando `local-exec` com script idempotente.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Terraform null_resource, triggers, local-exec, Bash Integration
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform apply -target=null_resource.sync_cmdb
```
