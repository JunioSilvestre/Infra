# 13 — Coletor e Analisador Automatizado de Core Dumps com GDB

## 🏢 Cenário de Negócios e Produção Real
Aplicações em C/C++/Go compiladas que sofrem segmentation fault em produção e geram core dumps volumosos.

### ⚠️ O Problema Real
Core dumps lotam o disco /var/lib/systemd/coredump e ninguém investiga a stack trace da falha.

## 🚀 Arquitetura e Engenharia em Bash
Interceptação de eventos de dump via coredumpctl, extração de backtrace com gdb em modo batch ('gdb -batch -ex bt'), compressão e envio de sumário para canal de alertas.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`coredumpctl, gdb, tar, gzip, curl`

## 📌 Exemplo de Execução CLI
```bash
./dump_analyzer.sh --since '1 hour ago' --symbol-path /usr/lib/debug --output /reports
```
