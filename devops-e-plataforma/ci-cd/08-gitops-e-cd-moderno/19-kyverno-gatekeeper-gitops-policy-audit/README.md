# 19 — Auditoria de Políticas de Admissão no Cluster GitOps com Kyverno e Gatekeeper

## 🏢 Cenário de Produção e Vida Real
Garantia de que nenhum manifesto aplicado pelo motor GitOps viole regras de segurança do cluster.

### ⚠️ O Problema Real
Manifestos aplicados diretamente pelo ArgoCD com privilégios de cluster-admin violando regras de segurança locais.

## 🚀 Arquitetura e Engenharia de CI/CD
Deploy de políticas declarativas do Kyverno (ex: proibir imagens com tag 'latest', exigir rótulos obrigatórios), bloqueando a sincronização do GitOps caso o manifesto no Git esteja irregular.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`kyverno, gatekeeper, kubectl`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
kubectl get policyreports -A
```
