# 07 — Triagem e Alívio de Pressão de Memória e Swap Thrashing

## 🏢 Cenário de Negócios e Produção Real
Instâncias sofrendo degradação severa por excesso de paginação em disco (Swap I/O Thrashing) antes do OOM-Killer agir.

### ⚠️ O Problema Real
O sistema fica totalmente responsivo e lento porque o kernel passa mais tempo movendo páginas para o swap do que executando instruções.

## 🚀 Arquitetura e Engenharia em Bash
Monitoramento de PSI (Pressure Stall Information via /proc/pressure/memory) e vmstat, identificação de processos com maior RSS/Swap em /proc/[pid]/smaps, descarte de caches controlados (drop_caches) e alerta prioritário.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`vmstat, free, /proc/pressure, awk, sort`

## 📌 Exemplo de Execução CLI
```bash
./swap_triage.sh --psi-threshold 40 --top-consumers 10 --flush-safe
```
