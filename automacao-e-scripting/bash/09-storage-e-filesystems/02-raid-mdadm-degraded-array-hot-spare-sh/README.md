# 02 — Monitor de Arrays RAID mdadm Degradados e Inserção Automática de Hot-Spare

## 🏢 Cenário de Negócios e Produção Real
Servidores com RAID de discos Linux por software (mdadm RAID 1, 5, 6, 10).

### ⚠️ O Problema Real
Um disco falha, o array entra em estado 'degraded' e se um segundo disco falhar antes da troca, os dados são perdidos.

## 🚀 Arquitetura e Engenharia em Bash
Inspeção periódica de /proc/mdstat e 'mdadm --detail /dev/md0', detecção imediata de estado degradado, adição automática de disco sobressalente previamente formatado (mdadm --add) e acompanhamento do rebuild de dados.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`mdadm, /proc/mdstat, mailx, logger`

## 📌 Exemplo de Execução CLI
```bash
./mdadm_watchdog.sh --array /dev/md0 --spare-disk /dev/sde
```
