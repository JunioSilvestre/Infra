# Microsserviços Serverless com Azure Container Apps e Framework Dapr

## 1. Cenário de Produção Real
Aplicações em containers precisavam de escalabilidade rápida baseada em filas e comunicação desacoplada sem a complexidade de gerenciar um cluster Kubernetes.

## 2. O Problema Real
Hospedar microsserviços com autoescalonamento elástico de zero réplicas (scale-to-zero) e suporte nativo a service invocation e pub/sub via Dapr.

## 3. Arquitetura e Engenharia da Solução
Ambiente Azure Container Apps com KEDA interno, componentes Dapr configurados com Azure Service Bus e ingress HTTPS com certificados automáticos.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Azure Container Apps (ACA), Dapr (Distributed Application Runtime), KEDA, Azure Service Bus
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
az containerapp show --name order-service --resource-group rg-microservices
```
