# 12 — Simulador e Analisador de Gatilhos de Escalonamento do HPA no Kubernetes

## 🏢 Cenário de Negócios e Produção Real
Ajuste fino de parâmetros de auto-escalonamento (HPA) para suportar picos de tráfego sem desperdiçar recursos.

### ⚠️ O Problema Real
HPAs mal configurados escalam tarde demais ou entram em oscilação rápida (flapping/thrashing).

## 🚀 Arquitetura e Engenharia em Bash
Inspeção dos alvos de CPU e métricas customizadas do HPA via 'kubectl get hpa -o json', simulação de aumento de métrica e verificação das regras de estabilização (behavior.scaleUp e behavior.scaleDown) para validar a resposta do cluster.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`kubectl, jq, awk, sleep`

## 📌 Exemplo de Execução CLI
```bash
./hpa_evaluator.sh --namespace prod --hpa payment-api --simulate-cpu 85
```
