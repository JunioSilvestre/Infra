# Mecanismo de Degradação Graciosa com Rate Limiting e Fallback em Cache

## 1. Cenário de Produção Real
Quando o banco de dados principal sofria lentidão momentânea, todas as consultas do catálogo de produtos caíam com erro 500.

## 2. O Problema Real
Responder aos clientes com dados cacheados ligeiramente defasados (Stale Data) em vez de exibir telas de erro de sistema.

## 3. Arquitetura e Engenharia da Solução
Implementação do padrão Stale-While-Revalidate em balanceadores e microsserviços com fallback automático para cache Redis.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Graceful Degradation, Stale-While-Revalidate, Circuit Breaking, Cache Resiliency
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
curl -I https://api.corp.internal/products -H 'Cache-Control: stale-if-error=300'
```
