# Captura Segura de Consultas SQL e Mascaramento de Parâmetros em Spans

## 1. Cenário de Produção Real
Spans de banco de dados capturavam queries contendo dados sigilosos e senhas em cláusulas `WHERE`, violando regras de conformidade.

## 2. O Problema Real
Capturar a estrutura da consulta SQL (`SELECT * FROM users WHERE id = ?`) mascarando categoricamente valores de parâmetros reais.

## 3. Arquitetura e Engenharia da Solução
Configuração de plugins de banco OpenTelemetry com sanitização de declarações SQL ativada antes da emissão do span para a rede.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** SQL Parameter Masking, Database Spans, OpenTelemetry Instrumentation Security
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
curl -s http://tempo:3200/api/traces/<TRACE_ID> | jq .batches[].scopeSpans[].spans[].attributes
```
