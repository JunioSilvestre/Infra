# 16 — Caçador de Vazamento de IPs e Sockets Órfãos de CNI (Calico / Cilium)

## 🏢 Cenário de Negócios e Produção Real
Clusters Kubernetes com alta rotatividade de pods (jobs curtos de CI) onde o pool de IPs da rede interna se esgota.

### ⚠️ O Problema Real
Pods deletados não liberam o IP na tabela de alocação da CNI, travando a criação de novos pods por falta de IP.

## 🚀 Arquitetura e Engenharia em Bash
Comparação entre os IPs de pods realmente vivos no cluster ('kubectl get pods -A -o wide') e a tabela de blocos alocados na CNI (calicoctl ipam show ou cilium-dbg ipam show), identificação de IPs órfãos e liberação segura do lease.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`kubectl, calicoctl, cilium-dbg, diff, sort`

## 📌 Exemplo de Execução CLI
```bash
./cni_ipam_cleaner.sh --cni calico --release-orphans
```
