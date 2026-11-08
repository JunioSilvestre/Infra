# 14 — Orquestrador de Atualização Gradual (Rolling Upgrade) de Nós de Cluster Kubernetes

## 🏢 Cenário de Negócios e Produção Real
Atualização de versão do Kubernetes (ex: v1.30 para v1.31) em clusters de produção sem interrupção de serviço.

### ⚠️ O Problema Real
Atualizar nós sem respeitar PodDisruptionBudgets (PDBs) causa indisponibilidade temporária de aplicações.

## 🚀 Arquitetura e Engenharia em Bash
Varredura sequencial de nós: verificação de PDBs, isolamento ('kubectl cordon'), drenagem de pods com timeout ('kubectl drain --delete-emptydir-data --ignore-daemonsets'), sinalização para upgrade do kubelet e reativação ('kubectl uncordon').

## 🛠️ Ferramentas Nativas Linux Utilizadas
`kubectl, apt-get, systemctl, sleep, logger`

## 📌 Exemplo de Execução CLI
```bash
./rolling_k8s_upgrade.sh --node-list /tmp/worker_nodes.txt --drain-timeout 300s
```
