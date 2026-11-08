# 12 — Interpolação Dinâmica de Segredos do Vault no GitOps com ArgoCD Vault Plugin (AVP)

## 🏢 Cenário de Produção e Vida Real
Substituição de placeholders de segredos em manifestos Kubernetes direto na geração do ArgoCD.

### ⚠️ O Problema Real
Evitar gravar segredos em arquivos do Git sem exigir operadores pesados de sincronização.

## 🚀 Arquitetura e Engenharia de CI/CD
Manifestos versionados contendo placeholders ('<path:secret/data/db#password>'), interceptados pelo plugin customizado do ArgoCD que busca o valor no HashiCorp Vault durante o build.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`argocd-vault-plugin, vault, kubectl`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
argocd-vault-plugin generate k8s/manifests/
```
