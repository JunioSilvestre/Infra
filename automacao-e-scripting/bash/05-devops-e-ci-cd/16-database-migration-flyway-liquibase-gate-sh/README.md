# 16 — Portão de CI/CD para Migrações de Banco de Dados com Flyway/Liquibase e Verificação de Rollback

## 🏢 Cenário de Negócios e Produção Real
Deploy contínuo de atualizações de schema de banco de dados (PostgreSQL/MySQL).

### ⚠️ O Problema Real
Migrações que travam tabelas grandes (lock de tabela exclusiva) ou que não possuem script de rollback testado derrubam a aplicação.

## 🚀 Arquitetura e Engenharia em Bash
Execução da migração em banco temporário efêmero em container, verificação de tempo de execução das queries (EXPLAIN), execução obrigatória do script de rollback (undo/rollback) e validação de consistência final antes de liberar o merge.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`flyway, liquibase, psql, docker`

## 📌 Exemplo de Execução CLI
```bash
./migration_gate.sh --migrations-dir ./db/migrations --test-rollback
```
