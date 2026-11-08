# Esteira Noturna de Detecção de Desvios de Configuração (Drift Detection)

## 1. Cenário de Produção Real
Alterações manuais emergenciais feitas no console da nuvem geravam inconsistências silenciosas com o código do repositório.

## 2. O Problema Real
Detectar automaticamente qualquer desvio entre a realidade física da nuvem e o código Git todas as madrugadas.

## 3. Arquitetura e Engenharia da Solução
Pipeline agendado (cron) executando `terraform plan -detailed-exitcode` e disparando alertas no Slack e abrindo issues caso haja desvio.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Terraform Drift Detection, Scheduled Pipelines, Slack Webhooks, GitHub Issues
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform plan -detailed-exitcode
```
