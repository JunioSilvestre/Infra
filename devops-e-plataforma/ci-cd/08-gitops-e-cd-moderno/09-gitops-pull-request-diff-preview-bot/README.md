# 09 — Bot de Visualização de Diff de Manifestos em Pull Requests do Repositório GitOps

## 🏢 Cenário de Produção e Vida Real
Revisão clara de código para que aprovadores saibam exatamente o que mudará no cluster antes do merge.

### ⚠️ O Problema Real
Revisar diffs de Kustomize ou Helm brutos em arquivos de patch é ilegível para humanos.

## 🚀 Arquitetura e Engenharia de CI/CD
Workflow acionado no PR que executa 'kustomize build' na branch e na main, gera o diff formatado de recursos de Kubernetes e publica uma tabela comentada no Pull Request.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`kustomize, dyff, gh-cli`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
dyff between <(kustomize build main) <(kustomize build branch)
```
