# Automação de Migrações de Esquema de Banco de Dados sem Parada (Zero-Downtime)

## 1. Cenário de Produção Real
Alterações estruturais em tabelas com 50 milhões de linhas travavam escritas e exigiam janelas de manutenção de madrugada.

## 2. O Problema Real
Aplicar o padrão Expand and Contract permitindo que versões antigas e novas de código rodem simultaneamente durante migrações.

## 3. Arquitetura e Engenharia da Solução
Pipeline de CI com Flyway/Liquibase executando adição de colunas anuláveis, backfill em lote assíncrono e troca atômica de triggers.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Zero-Downtime Database Migrations, Expand and Contract Pattern, Flyway, PostgreSQL
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
flyway -configFiles=flyway.conf migrate
```
