# 01 — Analisador de Latência do Three-Way Handshake TCP em Linha de Comando

## 🏢 Cenário de Negócios e Produção Real
Investigação de lentidão intermitente entre servidores de aplicação e bancos de dados remotos.

### ⚠️ O Problema Real
Pings ICMP respondem rápido, mas conexões TCP sofrem atrasos por congestionamento ou firewalls com inspeção de estado.

## 🚀 Arquitetura e Engenharia em Bash
Medição precisa do SYN/ACK time usando curl com variáveis de temporização formatadas (%{time_connect}, %{time_appconnect}, %{time_starttransfer}), cálculo de percentis p50/p95/p99 com awk.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`curl, awk, sort, column`

## 📌 Exemplo de Execução CLI
```bash
./tcp_latency.sh --target 10.0.1.50 --port 5432 --samples 100 --percentiles
```
