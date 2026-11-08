# 05 — Rastreador de Estados de Conexão TCP e Esgotamento de TIME_WAIT com ss

## 🏢 Cenário de Negócios e Produção Real
Servidores de alto volume de requisições HTTP/gRPC que sofrem com exaustão de sockets de rede.

### ⚠️ O Problema Real
Dezenas de milhares de conexões presas em TIME_WAIT impedem novas conexões de saída para microserviços.

## 🚀 Arquitetura e Engenharia em Bash
Varredura contínua com 'ss -s' e 'ss -tan', mapeamento da quantidade de conexões por estado (ESTAB, TIME_WAIT, SYN_RECV), correlação com IPs remotos e alerta antes de atingir limites de socket.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`ss, awk, sort, uniq, logger`

## 📌 Exemplo de Execução CLI
```bash
./tcp_state_tracker.sh --warn-threshold 20000 --collect-ips
```
