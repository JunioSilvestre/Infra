# Pipeline de Re-hidratação de Logs Arquivados para Análise Forense de Incidentes

## 1. Cenário de Produção Real
Manter todos os logs indexados no Datadog gerava um custo exorbitante; a empresa mantinha a maioria arquivada em buckets S3 baratos.

## 2. O Problema Real
Permitir que investigadores re-hidratem (recarreguem) rapidamente logs de uma data específica apenas durante a investigação de um incidente.

## 3. Arquitetura e Engenharia da Solução
Configuração de Datadog Log Archives conectado ao S3 com execução de Historical Rehydration jobs via API quando solicitado pelo time de SRE.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Datadog Log Archives, S3 Cold Storage, Log Rehydration, Forensic Investigation
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
curl -X POST -H 'DD-API-KEY: <KEY>' https://api.datadoghq.com/api/v2/logs/config/rehydrations
```
