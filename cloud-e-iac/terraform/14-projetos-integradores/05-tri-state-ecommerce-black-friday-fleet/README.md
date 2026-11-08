# Infraestrutura de E-commerce Elástica para Picos de Venda no Tri-State (NY, NJ, CT)

## 1. Cenário de Produção Real
Varejista online atendendo milhões de consumidores na região metropolitana precisa suportar picos instantâneos de 500.000 requisições por segundo.

## 2. O Problema Real
Provisionar infraestrutura elástica capaz de escalar de 20 para 400 servidores em menos de 2 minutos sem estourar o orçamento anual.

## 3. Arquitetura e Engenharia da Solução
Módulos combinando CloudFront com cache de borda agressivo, balanceadores ALB de alta vazão, pools Karpenter e cache Redis em cluster.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Terraform, AWS CloudFront, Karpenter, AWS ElastiCache Redis, ALB
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform apply -target=module.ecommerce_scale_fleet
```
