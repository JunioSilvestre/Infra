# Laboratório de Simulação e Recuperação de Arquivo de Estado Corrompido

## 1. Cenário de Produção Real
Engenheiros de SRE precisam estar treinados para lidar com incidentes onde o arquivo `.tfstate` sofre corrupção por escrita concorrente.

## 2. O Problema Real
Recuperar a consistência do estado sem destruir recursos físicos ativos na nuvem e sem perder o histórico de auditoria.

## 3. Arquitetura e Engenharia da Solução
Cenário com script induzindo erro sintático no estado JSON remoto, seguido do procedimento de rollback atômico e sincronização via refresh.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Terraform State Triage, Disaster Recovery Drills, JSON Parsing, State Recovery
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform state pull > corrupted.json && terraform refresh
```
