# Deploy de Traefik Enterprise API Gateway com Roteamento Avançado e mTLS

## 1. Cenário de Produção Real
Fintech em NY precisava de um gateway de entrada ultraleve com suporte nativo à especificação Kubernetes Gateway API e middleware de autenticação.

## 2. O Problema Real
Substituir ingress controllers legados por um gateway moderno com suporte a canários, rate limiting e observabilidade nativa.

## 3. Arquitetura e Engenharia da Solução
Módulo Terraform provisionando Traefik via Helm, configurando IngressRoutes CRDs e integração com dashboards de métricas Prometheus.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Terraform, Traefik Gateway, Kubernetes Gateway API, Middleware Routing
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform apply -target=helm_release.traefik
```
