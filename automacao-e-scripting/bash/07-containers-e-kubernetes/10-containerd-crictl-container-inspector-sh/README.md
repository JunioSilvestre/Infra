# 10 — Inspetor e Diagnóstico Direto de Runtime de Containers com crictl e containerd

## 🏢 Cenário de Negócios e Produção Real
Resolução de problemas de infraestrutura em nós de Kubernetes onde o Docker não existe e o runtime é o containerd puro.

### ⚠️ O Problema Real
Engenheiros acostumados com comandos Docker ficam perdidos ao debugar nós containerd em produção.

## 🚀 Arquitetura e Engenharia em Bash
Execução de diagnóstico via 'crictl ps', inspeção de pods e containers (crictl inspect), extração de métricas de CPU/RAM com 'crictl stats' e coleta de dumps de thread de containers travados.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`crictl, ctr, jq, column`

## 📌 Exemplo de Execução CLI
```bash
./crictl_diagnostic.sh --pod-name ingress-controller --collect-stats
```
