# 01 — Biblioteca de Logging Estruturado em JSON e Syslog para Bash

## 🏢 Cenário de Negócios e Produção Real
Padronização de formato de logs em todos os scripts da empresa para ingestão no Splunk, Datadog ou Elasticsearch.

### ⚠️ O Problema Real
Scripts que usam 'echo' simples geram logs desestruturados sem timestamp ISO-8601, nível de severidade ou PID.

## 🚀 Arquitetura e Engenharia em Bash
Módulo exportando funções 'log_info', 'log_warn', 'log_error', 'log_fatal' formatando a saída em JSON padronizado com campos timestamp, level, caller, line, pid e message, com suporte a saída paralela no terminal colorido e /dev/log via logger.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`date, logger, jq, awk`

## 📌 Exemplo de Execução CLI
```bash
source lib/log.sh && log_info 'Iniciando migração' '{"database":"core"}'
```
