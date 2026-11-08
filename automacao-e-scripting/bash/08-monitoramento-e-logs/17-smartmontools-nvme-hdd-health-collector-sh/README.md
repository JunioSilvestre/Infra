# 17 — Coletor e Preditor de Falhas em Discos NVMe e HDDs com smartctl

## 🏢 Cenário de Negócios e Produção Real
Prevenção de queima de discos físicos em servidores dedicados e storages locais.

### ⚠️ O Problema Real
Discos começam a apresentar setores defeituosos (bad sectors) e quebram de vez sem que ninguém perceba a degradação antecipada.

## 🚀 Arquitetura e Engenharia em Bash
Consulta SMART via 'smartctl -H -A -j /dev/nvme0n1', extração de temperatura, porcentagem de vida útil consumida (percentage_used), setores realocados (Reallocated_Sector_Ct) e disparo de alerta de troca preventiva.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`smartctl, jq, awk, mailx`

## 📌 Exemplo de Execução CLI
```bash
./smart_health_check.sh --scan-all-disks --json-out /var/log/disk_health.json
```
