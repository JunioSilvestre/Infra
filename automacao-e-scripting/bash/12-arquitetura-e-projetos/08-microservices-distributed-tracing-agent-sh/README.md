# 08 — Agente Leve de Injeção de Rastreamento Distribuído (Trace ID) para Daemons em Bash

## 🏢 Cenário de Negócios e Produção Real
Integração de scripts e tarefas de infraestrutura em esteiras de observabilidade compatíveis com OpenTelemetry / Jaeger.

### ⚠️ O Problema Real
Tarefas disparadas via cron ou jobs assíncronos não têm IDs de correlação com as requisições de negócio que as geraram.

## 🚀 Arquitetura e Engenharia em Bash
Biblioteca e wrapper que gera ou propaga cabeçalhos W3C Trace Context ('traceparent: 00-4bf92f3577b34da6a3ce929d0e0e4736-00f067aa0ba902b7-01'), repassando-os em todas as chamadas HTTP e gravando nos logs estruturados.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`openssl, date, curl, jq`

## 📌 Exemplo de Execução CLI
```bash
source lib/tracing.sh && trace_start 'backup_job' && curl -H "$(trace_header)" https://api...
```
