# 15 — Estratégia de Separação entre Repositório de Código da Aplicação e Repositório GitOps

## 🏢 Cenário de Produção e Vida Real
Isolamento de privilégios onde desenvolvedores têm permissão de commit no código, mas apenas o CI altera os manifestos de produção.

### ⚠️ O Problema Real
Misturar código e manifestos de infraestrutura no mesmo repositório gera loops infinitos de CI e confusão de acessos.

## 🚀 Arquitetura e Engenharia de CI/CD
Arquitetura com dois repositórios: 1) App Repo (código, testes e CI que gera a imagem), 2) Config Repo (manifestos GitOps onde o CI do App Repo faz commit apenas para atualizar a tag da imagem).

## 🛠️ Ferramentas e Tecnologias Utilizadas
`git, ssh, github-actions`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
./update_gitops_repo.sh --repo git@github.com:corp/gitops-prod.git --tag v1.4.0
```
