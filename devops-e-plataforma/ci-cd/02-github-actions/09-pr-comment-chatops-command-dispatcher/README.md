# 09 — Despachante de ChatOps via Comentários em Pull Requests (/deploy, /test)

## 🏢 Cenário de Produção e Vida Real
Operação de infraestrutura e execução de testes de carga disparados diretamente por comentários de revisores nos PRs.

### ⚠️ O Problema Real
Necessidade de abrir consoles de CI/CD para rodar comandos específicos de deploy manual.

## 🚀 Arquitetura e Engenharia de CI/CD
Workflow acionado pelo evento 'issue_comment', validação se o autor pertence ao time com permissão de escrita, parsing de comandos (/deploy staging, /retest), e execução com feedback em emoji e resposta no PR.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`actions/github-script, gh-cli`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
# Gatilho 'on: issue_comment: types: [created]' filtrando 'contains(github.event.comment.body, "/deploy")'
```
