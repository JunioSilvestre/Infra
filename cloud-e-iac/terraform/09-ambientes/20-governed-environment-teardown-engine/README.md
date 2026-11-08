# Motor Automatizado de Desligamento Noturno e Destruição de Ambientes Inativos

## 1. Cenário de Produção Real
Ambientes de testes e validação eram esquecidos ligados durante semanas após a conclusão dos projetos, drenando recursos financeiros.

## 2. O Problema Real
Identificar ambientes inativos e destruí-los automaticamente aos finais de semana, recriando-os na segunda-feira pela manhã.

## 3. Arquitetura e Engenharia da Solução
Pipeline de automação Terraform integrado com agendamento cron no GitHub Actions e tags de expiração obrigatórias nos recursos.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Cloud FinOps, Scheduled Teardown, Environment Lifecycle Automation
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform destroy -var-file=dev-ephemeral.tfvars -auto-approve
```
