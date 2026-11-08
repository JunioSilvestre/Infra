# 08 — Auditor e Notificador de Erros de Scrub e Saúde de Pools ZFS (zpool)

## 🏢 Cenário de Negócios e Produção Real
Storages corporativos rodando ZFS on Linux gerenciando múltiplos pools (RAIDZ2, Mirrors).

### ⚠️ O Problema Real
Discos em degradação geram erros de checksum no ZFS que precisam ser investigados imediatamente.

## 🚀 Arquitetura e Engenharia em Bash
Disparo agendado de 'zpool scrub', polling de status com 'zpool status -x', parsing de contadores de READ/WRITE/CKSUM errors e envio imediato de alerta com a lista de discos com falha física iminente.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`zpool, zfs, awk, mailx`

## 📌 Exemplo de Execução CLI
```bash
./zfs_scrub_watchdog.sh --pool tank --notify-on-error
```
