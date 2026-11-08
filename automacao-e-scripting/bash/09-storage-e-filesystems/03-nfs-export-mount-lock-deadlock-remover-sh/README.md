# 03 — Detector e Removedor de Deadlocks de Montagem e Locks NFS Órfãos

## 🏢 Cenário de Negócios e Produção Real
Storage corporativo centralizado exportando volumes via NFSv3/v4 para dezenas de servidores de aplicação.

### ⚠️ O Problema Real
Um cliente NFS sofre crash e deixa travas de arquivos presas no servidor (file locks presos), impedindo que outros nós escrevam no arquivo.

## 🚀 Arquitetura e Engenharia em Bash
Inspeção de locks em /proc/locks e comandos rpc.statd / sm-notify, identificação de PIDs inexistentes segurando travas em pontos de montagem NFS, limpeza forçada de locks órfãos e re-export atômico.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`showmount, exportfs, /proc/locks, fuser, kill`

## 📌 Exemplo de Execução CLI
```bash
./nfs_lock_cleaner.sh --mount /mnt/shared_nfs --kill-stale-holders
```
