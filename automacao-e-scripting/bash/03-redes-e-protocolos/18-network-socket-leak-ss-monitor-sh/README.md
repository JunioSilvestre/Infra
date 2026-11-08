# 18 — Monitor de Vazamento de Sockets TCP e Esgotamento de Portas Efêmeras

## 🏢 Cenário de Negócios e Produção Real
Microsserviços de alto throughput que realizam milhares de chamadas HTTP externas sem fechar conexões adequadamente.

### ⚠️ O Problema Real
Esgotamento da faixa de portas locais (local port range) e acúmulo de dezenas de milhares de sockets em estado TIME_WAIT ou CLOSE_WAIT.

## 🚀 Arquitetura e Engenharia em Bash
Coleta de métricas com 'ss -s' e 'ss -tan', cálculo do número de conexões por estado e processo, identificação de PIDs ofensores e alerta antecipado antes da recusa de conexões.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`ss, awk, sort, uniq, logger`

## 📌 Exemplo de Execução CLI
```bash
./socket_leak_audit.sh --warn-timewait 15000 --warn-closewait 500
```
