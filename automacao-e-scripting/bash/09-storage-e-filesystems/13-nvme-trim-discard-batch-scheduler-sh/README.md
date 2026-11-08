# 13 — Agendador e Otimizador de Descarte TRIM / Fstrim em Discos NVMe e SSDs

## 🏢 Cenário de Negócios e Produção Real
Manutenção da velocidade de escrita e durabilidade de SSDs e NVMes em servidores de alta densidade.

### ⚠️ O Problema Real
Falta de comandos TRIM periódicos degrada severamente a velocidade de escrita dos SSDs e acelera o desgaste das células NAND.

## 🚀 Arquitetura e Engenharia em Bash
Identificação de dispositivos compatíveis via lsblk --discard, execução atômica de 'fstrim -v' em todos os pontos de montagem compatíveis fora do horário de pico e registro de megabytes liberados.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`fstrim, lsblk, date, logger`

## 📌 Exemplo de Execução CLI
```bash
./run_fstrim.sh --all --log /var/log/fstrim.log
```
