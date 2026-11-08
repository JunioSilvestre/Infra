# Módulo Corporativo de Rede VPC com Suporte Multi-AZ, NAT Gateways e Endpoints

## 1. Cenário de Produção Real
Equipes de engenharia criavam VPCs com ranges de IP conflitantes, rotas incorretas para a internet e sem endpoints privados de S3/DynamoDB.

## 2. O Problema Real
Padronizar a criação de redes corporativas resilientes em Connecticut e Massachusetts com um único módulo auditado e seguro.

## 3. Arquitetura e Engenharia da Solução
Desenvolvimento de módulo com subnets públicas, privadas e de banco, cálculo dinâmico de CIDRs via `cidrsubnet()` e VPC Endpoints.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Terraform Modules, AWS VPC, cidrsubnet(), VPC Endpoints, Multi-AZ
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform plan -target=module.enterprise_vpc
```
