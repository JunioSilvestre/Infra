# 19 — Orquestrador de Reinicialização Segura de StatefulSets e DaemonSets em Kubernetes

## 🏢 Cenário de Produção e Vida Real
Atualização de bancos de dados distribuídos (Cassandra, Elasticsearch, Kafka) que exigem que apenas um nó reinicie por vez.

### ⚠️ O Problema Real
Reiniciar múltiplos nós ao mesmo tempo quebra o quórum de cluster e corrompe dados replicados.

## 🚀 Arquitetura e Engenharia de CI/CD
Script de controle de reinício sequencial nó a nó: aguarda o nó anterior atingir estado 'Ready' e sincronizar réplicas antes de enviar sinal de reinício para o próximo nó do cluster.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`kubectl, jq, sleep, awk`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
./stateful_rolling_restart.sh --statefulset kafka-cluster --namespace data --wait-sync
```
