# 12 — Template Reutilizável de Validação e Qualidade para Repositórios de Scripts Bash

## 🏢 Cenário de Produção e Vida Real
Manutenção da qualidade e segurança em repositórios de automação e scripts de sistema operacional.

### ⚠️ O Problema Real
Scripts sem padrão de indentação e com más práticas que causam falhas silenciosas.

## 🚀 Arquitetura e Engenharia de CI/CD
Template que roda ShellCheck com nível máximo de rigor, valida formatação uniforme com shfmt e roda suítes de testes unitários com BATS-core.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`shellcheck, shfmt, bats-core`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
shellcheck -x **/*.sh && shfmt -d -i 2 **/*.sh
```
