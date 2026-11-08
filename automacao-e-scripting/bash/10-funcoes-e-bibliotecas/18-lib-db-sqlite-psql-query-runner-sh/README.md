# 18 — Executor Abstrato de Consultas SQL para SQLite e PostgreSQL em Bash

## 🏢 Cenário de Negócios e Produção Real
Scripts que precisam persistir estados locais em SQLite ou consultar tabelas de controle em PostgreSQL.

### ⚠️ O Problema Real
Tratar saídas tabulares e códigos de erro de clientes SQL diferentes em Bash é propenso a falhas de parsing.

## 🚀 Arquitetura e Engenharia em Bash
Módulo que encapsula comandos 'sqlite3' e 'psql' com saída estruturada em CSV ou JSON (-A -F',' / -o json), tratamento de timeouts de conexão e verificação estrita de erros de transação.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`sqlite3, psql, awk`

## 📌 Exemplo de Execução CLI
```bash
source lib/db.sh && db_query --engine sqlite --db state.db --sql 'SELECT count(*) FROM jobs;'
```
