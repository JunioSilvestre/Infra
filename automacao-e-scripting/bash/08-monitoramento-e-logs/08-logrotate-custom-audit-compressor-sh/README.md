# 08 — Auditor de Políticas de Rotação de Logs e Compactação em Lote com pigz

## 🏢 Cenário de Negócios e Produção Real
Garantia de que arquivos de logs corporativos em /var/log sejam rotacionados e comprimidos sem perda de dados.

### ⚠️ O Problema Real
Configurações incorretas de logrotate deixam logs sem comprimir consumindo dezenas de gigabytes.

## 🚀 Arquitetura e Engenharia em Bash
Inspeção de arquivos em /etc/logrotate.d/, execução em modo debug (logrotate -d), busca de arquivos de log gigantes não rotacionados e compactação paralela acelerada via pigz.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`logrotate, find, pigz, du, df`

## 📌 Exemplo de Execução CLI
```bash
./audit_logrotate.sh --check-all --force-compress-unrotated
```
