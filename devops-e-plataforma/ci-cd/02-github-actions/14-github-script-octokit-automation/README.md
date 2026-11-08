# 14 — Automações Avançadas da API do GitHub usando actions/github-script e Octokit

## 🏢 Cenário de Produção e Vida Real
Tarefas complexas de governança de repositório (ex: criar issues de retrospectiva, gerenciar milestonas e atribuir revisores).

### ⚠️ O Problema Real
Fazer chamadas cURL manuais contra a API do GitHub em Bash exige tratar paginação, tokens e parsing JSON extenso.

## 🚀 Arquitetura e Engenharia de CI/CD
Uso da action 'actions/github-script' escrevendo JavaScript moderno com acesso direto ao cliente Octokit autenticado, tratando erros e manipulando dados nativamente.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`actions/github-script, octokit, javascript`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
# uses: actions/github-script@v7 com script: github.rest.issues.createComment(...)
```
