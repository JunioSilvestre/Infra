# 02 — Drenador Preventivo e Cordon de Nós Kubernetes sob Pressão de Memória / Disco

## 🏢 Cenário de Negócios e Produção Real
Nós de cluster Kubernetes que entram em condição MemoryPressure ou DiskPressure antes que o kubelet mate pods de forma aleatória.

### ⚠️ O Problema Real
O kubelet inicia despejo desordenado de pods (Eviction), derrubando serviços essenciais sem aviso.

## 🚀 Arquitetura e Engenharia em Bash
Monitoramento das condições do nó com 'kubectl get nodes -o json', identificação de flags MemoryPressure=True, isolamento do nó com 'kubectl cordon' para não receber novas cargas e drenagem segura dos pods não essenciais com 'kubectl drain'.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`kubectl, jq, logger, sleep`

## 📌 Exemplo de Execução CLI
```bash
./node_pressure_guard.sh --threshold-memory-pct 92 --drain-non-critical
```
