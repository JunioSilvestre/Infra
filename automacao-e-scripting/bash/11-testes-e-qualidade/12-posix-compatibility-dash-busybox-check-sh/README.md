# 12 — Auditor de Compatibilidade POSIX Estrita com Dash e BusyBox Shell

## 🏢 Cenário de Negócios e Produção Real
Garantia de que scripts que rodam em contêineres mínimos Alpine (onde o /bin/sh é o BusyBox/ash) não utilizem bashismos.

### ⚠️ O Problema Real
Scripts que usam '[[ ]]', arrays ou '==' quebram em contêineres Alpine ou distribuições que usam Dash como /bin/sh.

## 🚀 Arquitetura e Engenharia em Bash
Execução automatizada do linter 'checkbashisms' e execução real dos testes unitários utilizando explicitamente os interpretadores '/bin/dash' e '/bin/busybox sh'.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`checkbashisms, dash, busybox`

## 📌 Exemplo de Execução CLI
```bash
./check_posix.sh --script ./init_container.sh
```
