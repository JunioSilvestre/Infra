# 18 — Plano de Recuperação de Desastres (DR) para Clusters GitOps do Zero (Cold Start)

## 🏢 Cenário de Produção e Vida Real
Restauração completa de um cluster Kubernetes destruído a partir exclusivamente do repositório Git.

### ⚠️ O Problema Real
Dependências circulares onde o cluster precisa do GitOps para subir, mas o GitOps precisa de segredos que estavam no cluster.

## 🚀 Arquitetura e Engenharia de CI/CD
Script de bootstrap que instala o operador GitOps (Flux/ArgoCD), injeta a chave mestra de segredos (Age/Vault), aponta para o repositório Git e reconstrói 100% das aplicações e redes em menos de 10 minutos.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`kubectl, helm, flux, bash`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
./gitops_bootstrap_cluster.sh --cluster-config clusters/prod/bootstrap.yaml
```
