# Promoção Canário Baseada em Índice de Satisfação de Usuário (Apdex Score)

## 1. Cenário de Produção Real
Taxa de erro pura não é suficiente para capturar lentidões sutis que fazem usuários abandonarem a plataforma de compra.

## 2. O Problema Real
Calcular a métrica Apdex combinando latência de requisições toleradas vs frustradas e usar como critério decisório de release.

## 3. Arquitetura e Engenharia da Solução
Implementação de cálculo Apdex PromQL integrado a métricas de Ingress e avaliado iterativamente a cada incremento de tráfego de 10%.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Apdex Score, Prometheus PromQL, User Experience Metrics, Argo Rollouts
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kubectl get rollouts -o jsonpath='{.status.conditions}'
```
