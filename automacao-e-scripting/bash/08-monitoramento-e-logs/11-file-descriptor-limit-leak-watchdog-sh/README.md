# 11 — Watchdog e Alerta de Consumo Crítico da Tabela Global de File Descriptors

## 🏢 Cenário de Negócios e Produção Real
Sistemas operando sob carga extrema de conexões simultâneas de microsserviços.

### ⚠️ O Problema Real
Esgotamento da tabela global de descritores (/proc/sys/fs/file-nr) impede o sistema operacional de abrir qualquer novo arquivo ou socket.

## 🚀 Arquitetura e Engenharia em Bash
Leitura periódica do /proc/sys/fs/file-nr, cálculo percentual contra file-max, identificação em lote dos processos com maior quantidade de FDs abertos via lsof/proc e disparo de alerta crítico preventivo.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`cat, /proc, awk, lsof, sort`

## 📌 Exemplo de Execução CLI
```bash
./fd_watchdog.sh --threshold-pct 85 --top 5
```
