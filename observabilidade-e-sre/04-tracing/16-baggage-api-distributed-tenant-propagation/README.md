# Propagação de Contexto de Negócio entre Microsserviços com OpenTelemetry Baggage

## 1. Cenário de Produção Real
Auditoria precisava rastrear qual ID de cliente (Tenant ID) originou uma chamada com falha a 6 camadas de distância do gateway de entrada.

## 2. O Problema Real
Trafegar atributos de negócio transparentemente através de dezenas de microsserviços sem alterar as assinaturas das APIs internas.

## 3. Arquitetura e Engenharia da Solução
Uso da OpenTelemetry Baggage API injetando `tenant_id` e `user_tier` no contexto distribuído compartilhado por todos os spans filhos.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** OpenTelemetry Baggage API, Context Enrichment, Multi-Tenant Auditing
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
curl -H 'baggage: tenantId=acme_corp,tier=enterprise' http://api.corp.internal/v1/order
```
