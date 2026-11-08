# 09 — Concentrador e Roteador de Syslog de Alta Vazão com Named Pipes e Filtros de Regras

## 🏢 Cenário de Negócios e Produção Real
Servidor central de recepção de logs que recebe dezenas de milhares de mensagens por segundo de switches e servidores.

### ⚠️ O Problema Real
Daemons tradicionais travam ou descartam pacotes UDP durante tempestades de logs de rede.

## 🚀 Arquitetura e Engenharia em Bash
Recepção de tráfego syslog via sockets de rede locais, buffer em memória com named pipes, classificação por severidade e regex em tempo real com awk, e distribuição em arquivos de log dedicados por subsistema.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`socat, mkfifo, awk, logger`

## 📌 Exemplo de Execução CLI
```bash
./syslog_concentrator.sh --port 514 --buffer-size 64M --rules /etc/log_rules.conf
```
