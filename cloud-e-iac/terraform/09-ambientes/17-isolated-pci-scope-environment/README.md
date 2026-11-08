# Isolamento Físico de Ambiente sob Escopo PCI-DSS para Redução de Custo de Auditoria

## 1. Cenário de Produção Real
Deixar serviços comuns no mesmo ambiente dos servidores que processam cartões aumentava o custo da auditoria em centenas de milhares de dólares.

## 2. O Problema Real
Reduzir o escopo da auditoria isolando completamente os servidores que manipulam dados de cartões em uma conta e VPC exclusiva.

## 3. Arquitetura e Engenharia da Solução
Módulo de infraestrutura blindada com regras de firewall restritas, VPN dedicada e ausência total de conexões com o restante da empresa.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** PCI-DSS Scope Reduction, Cardholder Data Environment (CDE), Dedicated Cloud Account
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform plan -target=module.pci_isolated_environment
```
