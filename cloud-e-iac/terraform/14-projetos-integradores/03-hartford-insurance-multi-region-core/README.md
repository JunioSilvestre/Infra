# Plataforma de Subscrição de Seguros com Resiliência Ativo-Ativo em Hartford (CT)

## 1. Cenário de Produção Real
Grande seguradora corporativa requer disponibilidade contínua de emissão de apólices contra desastres naturais no leste dos EUA.

## 2. O Problema Real
Garantir replicação síncrona de dados entre datacenters em Connecticut e regiões de nuvem com failover de DNS transparente.

## 3. Arquitetura e Engenharia da Solução
Arquitetura multi-região (us-east-1 e us-east-2) conectada via Transit Gateway Peering, DynamoDB Global Tables e Route53 Traffic Flow.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Terraform, AWS Multi-Region, Transit Gateway, DynamoDB Global Tables, Route53
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform apply -target=module.hartford_insurance_core
```
