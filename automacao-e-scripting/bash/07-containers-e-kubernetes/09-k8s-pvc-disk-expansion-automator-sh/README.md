# 09 — Monitor e Expansor Dinâmico de Volumes Persistentes (PVC) no Kubernetes

## 🏢 Cenário de Negócios e Produção Real
Bancos de dados e brokers de mensageria (Kafka/RabbitMQ) rodando em Kubernetes cujo armazenamento atinge 85% de uso.

### ⚠️ O Problema Real
Esgotar o disco de um banco de dados corrompe transações e derruba pods em loop.

## 🚀 Arquitetura e Engenharia em Bash
Coleta do uso de disco dos PVCs via métricas do kubelet (kubectl get --raw /api/v1/nodes/.../stats/summary), identificação de volumes com >85% de ocupação e patch automático do manifesto PVC ('kubectl patch pvc ... -p '{"spec":{"resources":{"requests":{"storage":"100Gi"}}}}'') utilizando o StorageClass com volumeExpansion.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`kubectl, jq, bc, awk`

## 📌 Exemplo de Execução CLI
```bash
./expand_pvc.sh --namespace databases --threshold-pct 85 --increase-pct 25
```
