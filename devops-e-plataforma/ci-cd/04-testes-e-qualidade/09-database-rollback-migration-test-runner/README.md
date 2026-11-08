# 09 — Validador e Testador Automatizado de Migrações de Banco com Rollback Obrigatório

## 🏢 Cenário de Produção e Vida Real
Garantia de que scripts de migração de banco (EF Core, Flyway) executem para frente e para trás sem erros.

### ⚠️ O Problema Real
A migração sobe com sucesso, mas em caso de incidente a equipe descobre que o rollback não foi testado e falha.

## 🚀 Arquitetura e Engenharia de CI/CD
Subida de banco efêmero em container Docker, aplicação da migração (UP), verificação do schema, reversão obrigatória da migração (DOWN), e validação de que o estado anterior do banco é idêntico.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`docker, psql, flyway, bash`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
./test_migration_rollback.sh --migration-version 2026110501
```
