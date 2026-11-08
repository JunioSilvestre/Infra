# Arquitetura de NAT Gateway Compartilhado com Economia FinOps de Largura de Banda

## 1. Cenário de Produção Real
Provisionar um NAT Gateway por subnet em 10 VPCs gerava uma conta de milhares de dólares por mês em custos fixos desnecessários.

## 2. O Problema Real
Consolidar a saída de internet de dezenas de VPCs de desenvolvimento através de uma única VPC centralizada de egress conectada via Transit Gateway.

## 3. Arquitetura e Engenharia da Solução
Topologia de Egress VPC com NAT Gateway compartilhado em alta disponibilidade, rotas padrão `0.0.0.0/0` apontando para o TGW e economia de 75%.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** AWS NAT Gateway, Transit Gateway Egress Routing, Cloud FinOps, Network Architecture
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
aws ec2 describe-nat-gateways --filter Name=state,Values=available
```
