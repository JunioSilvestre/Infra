# 18 — Template Reutilizável de Atualização de Tags em Repositórios GitOps

## 🏢 Cenário de Produção e Vida Real
Step final de pipelines de aplicação que atualiza os manifestos declarativos de deploy com a nova versão.

### ⚠️ O Problema Real
Implementações manuais de git clone, sed e git push com tratamento de erro frágil em cada repositório.

## 🚀 Arquitetura e Engenharia de CI/CD
Composite Action ou reusable workflow corporativo que clona com segurança o repositório GitOps via SSH/Token, atualiza a tag no Kustomization ou values.yaml via yq e comita com mensagem semântica rastreável.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`yq, git, gh-cli`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
# uses: my-corp/ci-templates/.github/workflows/gitops-update.yml@v1
```
