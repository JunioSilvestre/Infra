# Laboratório de Resolução de Travas de Estado em Falhas Críticas de CI/CD

## 1. Cenário de Produção Real
A esteira de integração contínua abortou abruptamente durante a execução do Terraform, deixando o lock no DynamoDB ativo.

## 2. O Problema Real
Aprender a inspecionar os metadados do lock, certificar-se de que nenhum apply paralelo está em curso e liberar o lock com segurança.

## 3. Arquitetura e Engenharia da Solução
Simulação de travamento com término forçado de processo (`kill -9`) e execução do comando `terraform force-unlock` com auditoria.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** DynamoDB State Locks, terraform force-unlock, Incident Mitigation, Troubleshooting
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform force-unlock -force <LOCK_ID>
```
