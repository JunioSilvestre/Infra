# 20 — Redescoberta e Rescan Não-Destrutivo de LUNs Fibre Channel / SAS via Sysfs

## 🏢 Cenário de Negócios e Produção Real
Adição de novo armazenamento ou expansão de LUN em storage corporativo sem reiniciar o servidor de produção.

### ⚠️ O Problema Real
O storage expande o volume na controladora, mas o kernel do Linux não enxerga o novo tamanho sem rescan adequado.

## 🚀 Arquitetura e Engenharia em Bash
Varredura não destrutiva do barramento SCSI através do sysfs ('echo 1 > /sys/class/scsi_device/.../device/rescan'), detecção de novos LUNs com 'rescan-scsi-bus.sh' e redimensionamento de volumes multipath com 'multipathd resize map'.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`/sys/class/scsi_host, rescan-scsi-bus.sh, multipathd, lsblk`

## 📌 Exemplo de Execução CLI
```bash
./fc_rescan.sh --all-hosts --resize-multipath
```
