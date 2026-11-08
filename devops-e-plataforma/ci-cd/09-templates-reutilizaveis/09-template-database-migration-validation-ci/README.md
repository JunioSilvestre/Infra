# 09 — Template Reutilizável de Validação e Teste de Migrações de Banco de Dados

## 🏢 Cenário de Produção e Vida Real
Esteira padronizada para validação de scripts SQL e migrações ORM em múltiplos bancos.

### ⚠️ O Problema Real
Migrações que travam tabelas ou falham em testes de rollback derrubando deploys.

## 🚀 Arquitetura e Engenharia de CI/CD
Template que sobe um container efêmero com o banco de dados oficial, aplica todas as migrações existentes, aplica as migrações novas, executa rollback e valida consistência do schema com pg_dump.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`docker, psql, flyway, dotnet-ef`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
./test_migrations.sh --database postgresql:16 --migrations-dir ./db
```
