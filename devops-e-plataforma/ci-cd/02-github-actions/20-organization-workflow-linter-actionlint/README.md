# 20 — Linter Estático e Validador de Sintaxe de Workflows com actionlint

## 🏢 Cenário de Produção e Vida Real
Prevenção de erros de digitação e expressões incorretas em arquivos YAML de workflows em toda a organização.

### ⚠️ O Problema Real
Erros em expressões `${{ ... }}` só aparecem após o push, quando o GitHub Actions recusa a execução do workflow.

## 🚀 Arquitetura e Engenharia de CI/CD
Execução do 'actionlint' com validação estrita de schemas do GitHub Actions, checagem de tipos de expressões e auditoria de comandos shell embutidos com shellcheck.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`actionlint, shellcheck`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
actionlint -color .github/workflows/*.yml
```
