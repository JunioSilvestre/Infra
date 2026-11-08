# 03 — Integração e Deploy GitOps Seguro com GitLab Agent for Kubernetes (KAS)

## 🏢 Cenário de Produção e Vida Real
Deploy contínuo em clusters Kubernetes privados sem expor a API do cluster para a internet pública.

### ⚠️ O Problema Real
Usar credenciais de admin com kubeconfig em variáveis de CI expõe o cluster a riscos severos de invasão.

## 🚀 Arquitetura e Engenharia de CI/CD
Instalação do GitLab Agent no cluster via Helm, conexão bidirecional segura com o GitLab, e execução de comandos kubectl nos pipelines utilizando o contexto do agent sem credenciais estáticas.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`helm, kubectl, gitlab-agent`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
kubectl config use-context path/to/project:agent-name
```
