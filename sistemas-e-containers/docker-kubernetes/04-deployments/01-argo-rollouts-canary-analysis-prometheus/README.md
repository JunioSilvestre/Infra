# Canary Release Automatizado com Análise de Métricas Prometheus via Argo Rollouts

## 1. Cenário de Produção Real
Hedge fund em Manhattan exige que atualizações do motor de risco não afetem mais de 1% do tráfego se a taxa de erros HTTP subir 0.05%.

## 2. O Problema Real
Automatizar o ciclo de promoção e rollback de releases canário analisando telemetria em tempo real sem qualquer clique humano.

## 3. Arquitetura e Engenharia da Solução
Deploy de Argo Rollouts com CRD AnalysisTemplate consultando Prometheus com queries de taxa de sucesso (`rate(http_requests_total)`) e abort automático.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Argo Rollouts, Prometheus, Kubernetes, Canary Deployment Strategy
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kubectl argo rollouts get rollout trading-gateway -n prod --watch
```
