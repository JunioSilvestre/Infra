# 04 — Matriz de Lógica Condicional Avançada com 'rules' e Expressões Regex

## 🏢 Cenário de Produção e Vida Real
Controle cirúrgico de quando jobs devem rodar (apenas em tags, branches específicas, modificações de paths ou variáveis manuais).

### ⚠️ O Problema Real
Diretivas legadas 'only/except' são limitadas e não suportam combinações lógicas complexas.

## 🚀 Arquitetura e Engenharia de CI/CD
Aplicação de blocos 'rules:' avançados com operadores lógicos, variáveis de sistema ($CI_COMMIT_BRANCH, $CI_PIPELINE_SOURCE) e 'changes:' com paths específicos.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`gitlab-ci rules, regex`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
# rules: - if: '$CI_COMMIT_TAG =~ /^v[0-9]+/' when: always
```
