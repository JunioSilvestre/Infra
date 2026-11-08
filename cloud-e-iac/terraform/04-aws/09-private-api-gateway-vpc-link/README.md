# Exposição Segura de Microsserviços Privados com AWS API Gateway e VPC Link

## 1. Cenário de Produção Real
Aplicações front-end precisavam consumir serviços backend privados sem que esses serviços fossem expostos diretamente na internet pública.

## 2. O Problema Real
Controlar autenticação corporativa JWT (Cognito/OAuth), rate limiting e governança de rotas em um gateway de entrada gerenciado.

## 3. Arquitetura e Engenharia da Solução
Deploy de API Gateway HTTP/REST associado a VPC Links e balanceadores internos Network Load Balancers (NLB) em subnets privadas.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** AWS API Gateway, VPC Link, Network Load Balancer (NLB), JWT Authorizers
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
aws apigatewayv2 get-vpc-links
```
