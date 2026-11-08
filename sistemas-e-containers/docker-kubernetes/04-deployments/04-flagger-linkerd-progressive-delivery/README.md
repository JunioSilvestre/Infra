# Entrega Progressiva Automatizada com Flagger e Linkerd Service Mesh

## 1. Cenário de Produção Real
Necessidade de automação de entrega canário para microsserviços em clusters leves onde o overhead do Istio era proibitivo.

## 2. O Problema Real
Automatizar roteamento de tráfego, verificação de latência e promoção gradual de pods utilizando a leveza do Linkerd.

## 3. Arquitetura e Engenharia da Solução
Deploy do Flagger controller configurado com CustomResource `Canary` observando Linkerd SMI e métricas de latência p99.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Flagger, Linkerd, Prometheus, Progressive Delivery
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kubectl describe canary/payment-service
```
