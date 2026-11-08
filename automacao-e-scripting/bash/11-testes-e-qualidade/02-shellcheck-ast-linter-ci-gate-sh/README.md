# 02 — Portão de Qualidade Estático com ShellCheck e Análise de AST

## 🏢 Cenário de Negócios e Produção Real
Integração contínua (CI) que impede código shell de má qualidade de ser commitado no repositório.

### ⚠️ O Problema Real
Pequenos erros como esquecer aspas em variáveis com espaços resultam em falhas graves.

## 🚀 Arquitetura e Engenharia em Bash
Varredura recursiva de arquivos com shebang '#!/bin/bash', execução do ShellCheck com nível de severidade 'style', geração de relatórios de violações e bloqueio automático da esteira se houver erros.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`shellcheck, find, git`

## 📌 Exemplo de Execução CLI
```bash
./run_linter.sh --dir . --severity info --format checkstyle
```
