# Arquitetura de Baixa Latência para Trading Financeiro em Manhattan (NYC)

## 1. Cenário de Produção Real
Instituição financeira em Wall Street precisa de infraestrutura de processamento de ordens em milissegundos com isolamento total PCI-DSS.

## 2. O Problema Real
Orquestrar rede com SR-IOV e ENA acelerada, clusters Kubernetes bare-metal/EKS, banco Aurora PostgreSQL e cofres HashiCorp Vault.

## 3. Arquitetura e Engenharia da Solução
Stack integrada com VPC de baixa latência, Security Groups granulares, cluster EKS otimizado, banco Aurora e observabilidade Datadog.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Terraform, AWS EKS, AWS Aurora PostgreSQL, HashiCorp Vault, Datadog
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform apply -target=module.wall_street_fintech_platform
```
