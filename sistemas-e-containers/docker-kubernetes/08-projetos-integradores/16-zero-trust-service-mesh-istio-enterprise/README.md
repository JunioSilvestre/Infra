# Malha de Microsserviços com Service Mesh Istio e Autenticação mTLS Estrita

## 1. Cenário de Produção Real
Comitê de cibersegurança exigiu criptografia total, autenticação criptográfica SPIFFE/SPIRE e métricas unificadas em todos os 300 microsserviços.

## 2. O Problema Real
Gerenciar tráfego L7, injeção de falhas controladas, rastreabilidade distribuída e bloqueio de serviços sem token corporativo JWT.

## 3. Arquitetura e Engenharia da Solução
Deploy do Istio Service Mesh em modo Ambient ou Sidecar com AuthorizationPolicies, PeerAuthentication STRICT e exportação de traces OpenTelemetry.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Istio Service Mesh, SPIFFE/SPIRE, OpenTelemetry, Envoy Proxy, Jaeger
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
istioctl analyze -A && istioctl proxy-config endpoints deployment/frontend
```
