# Banco de Dados Transacional Distribuído Ativo-Ativo com CockroachDB

## 1. Cenário de Produção Real
Fintech internacional em NY e Londres precisa de um banco relacional global com consistência estrita (Serializability) e RPO zero.

## 2. O Problema Real
Eliminar o gargalo de nós mestres únicos e permitir que escritas locais ocorram em qualquer datacenter sem conflitos.

## 3. Arquitetura e Engenharia da Solução
Deploy de cluster CockroachDB com réplicas geodistribuídas, sobrevivência automática à perda de nós e balanceamento de ranges de dados.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** CockroachDB, Distributed SQL, Serializability, High Availability Database
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
cockroach node status --certs-dir=certs
```
