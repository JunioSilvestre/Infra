# 06 — Sanitizador de Strings e Prevenção de Injeção de Comandos Shell e SQL

## 🏢 Cenário de Negócios e Produção Real
Tratamento de entradas de usuários ou dados externos antes de repassar para queries psql/mysql ou comandos de sistema.

### ⚠️ O Problema Real
Concatenação simples de strings resulta em vulnerabilidades críticas de Command Injection e SQL Injection.

## 🚀 Arquitetura e Engenharia em Bash
Funções 'shell_escape' (utilizando ${var@Q} ou aspas simples seguras) e 'sql_escape' (duplicação de aspas e escape de caracteres nulos), remoção de caracteres de controle e validação de UTF-8.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`sed, awk, tr`

## 📌 Exemplo de Execução CLI
```bash
source lib/string.sh && safe_val=$(shell_escape "$USER_INPUT")
```
