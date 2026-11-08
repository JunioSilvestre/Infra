# Evolução de Ingress com Kubernetes Gateway API e Envoy Proxy

## 1. Cenário de Produção Real
Equipes corporativas atingiram o limite de recursos com Ingress tradicional para tráfego gRPC, splitting percentual de tráfego e headers.

## 2. O Problema Real
Adotar a nova especificação oficial Gateway API padronizando separação de papéis entre Cluster Operator e Application Developer.

## 3. Arquitetura e Engenharia da Solução
Deploy do Envoy Gateway, provisionamento de GatewayClass, HTTPRoute com split de canário 90/10 e rewrite dinâmico de URLs.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Kubernetes Gateway API, Envoy Gateway, HTTPRoute, GRPCRoute
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kubectl get gateway,httproute -A
```
