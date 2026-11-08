# Garantia de Idempotência Estrita em APIs de Cobrança com Travas Redis

## 1. Cenário de Produção Real
Falhas de rede ou cliques repetidos de usuários no botão de compra causavam cobranças duplicadas em cartões de crédito de clientes.

## 2. O Problema Real
Garantir que a mesma requisição recebida múltiplas vezes seja processada exatamente uma única vez sem duplicação de débito.

## 3. Arquitetura e Engenharia da Solução
Implementação do padrão Idempotency-Key com chaves atômicas no Redis (`SET NX EX`) e armazenamento da resposta processada.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** API Idempotency, Distributed Locks, Redis Atomic Operations, Financial Safety
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
curl -H 'Idempotency-Key: 1b9d6bcd-bbfd-4b2d-9b5d-ab8dfbbd4bed' -X POST https://api.corp.internal/charge
```
