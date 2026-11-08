# Observabilidade de Malha de Serviços com Istio, Kiali e Inspeção de mTLS

## 1. Cenário de Produção Real
Empresa com mais de 200 microsserviços precisa de visibilidade completa de conexões criptografadas e conformidade de tráfego.

## 2. O Problema Real
Visualizar graficamente o fluxo de requisições em tempo real, identificar serviços com falha de mTLS e gargalos de proxy sidecar.

## 3. Arquitetura e Engenharia da Solução
Deploy do Istio Service Mesh integrado com Kiali Console, Jaeger e Prometheus expondo métricas de tráfego L7 e certificados de identidade.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Istio Service Mesh, Kiali Console, mTLS Observability, Envoy Proxy Metrics
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
kubectl port-forward -n istio-system svc/kiali 20001:20001
```
