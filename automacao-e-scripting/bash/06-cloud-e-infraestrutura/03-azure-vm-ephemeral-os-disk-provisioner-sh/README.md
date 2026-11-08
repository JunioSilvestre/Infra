# 03 — Provisionador Automatizado de Máquinas Virtuais Azure com Discos Ephemeral OS

## 🏢 Cenário de Negócios e Produção Real
Provisionamento de nós de alta performance para processamento em lote e nós de cluster Kubernetes AKS no Microsoft Azure.

### ⚠️ O Problema Real
Discos gerenciados persistentes padrão (Managed Disks) têm custos recorrentes e maior latência de I/O de disco.

## 🚀 Arquitetura e Engenharia em Bash
Automação via Azure CLI (az vm create) com flags de disco efêmero na memória cache da VM (--ephemeral-os-disk true), injeção de cloud-init e validação de deploy em menos de 45 segundos.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`az, jq, envsubst, ssh`

## 📌 Exemplo de Execução CLI
```bash
./azure_ephemeral_vm.sh --resource-group rg-prod --vm-name worker-01 --size Standard_D4ds_v5
```
