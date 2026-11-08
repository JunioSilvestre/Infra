# 02 — Deploy Canário Progressivo com Argo Rollouts e Service Mesh Istio

## 🏢 Cenário de Produção e Vida Real
Liberação gradual de versão crítica com análise em tempo real de métricas do Prometheus.

### ⚠️ O Problema Real
Erros em código novo só aparecem sob carga real, impactando todos os usuários se o deploy for total.

## 🚀 Arquitetura e Engenharia de CI/CD
Definição do recurso Rollout com passos progressivos (20% -> 40% -> 60% -> 100%), roteamento de tráfego via VirtualService do Istio e auto-rollback se o percentual de erro passar de 1%.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`kubectl, argo-rollouts, istioctl`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
kubectl argo rollouts promote my-app-rollout
```
