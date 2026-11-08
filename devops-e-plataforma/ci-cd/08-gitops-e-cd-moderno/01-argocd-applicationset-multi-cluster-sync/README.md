# 01 — Orquestrador Multi-Cluster com ArgoCD ApplicationSet e Geradores de Clusters

## 🏢 Cenário de Produção e Vida Real
Deploy automatizado das mesmas aplicações em dezenas de clusters Kubernetes distribuídos geograficamente.

### ⚠️ O Problema Real
Criar e manter manifestos individuais do ArgoCD para cada cluster gera duplicação e erros manuais.

## 🚀 Arquitetura e Engenharia de CI/CD
Definição de ApplicationSet declarativo utilizando o Cluster Generator, provisionando automaticamente instâncias da aplicação com parâmetros específicos por região e ambiente.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`argocd, kubectl, yaml`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
kubectl apply -f applicationset-clusters.yaml
```
