# 19 — Auditor de Menor Privilégio e Permissões RBAC Ociosas no Kubernetes

## 🏢 Cenário de Negócios e Produção Real
Auditoria de segurança em clusters Kubernetes para conformidade com SOC 2 e CIS Kubernetes Benchmark.

### ⚠️ O Problema Real
ClusterRoles com permissões amplas (verbos '*' em todos os recursos) concedidas a ServiceAccounts de aplicações simples.

## 🚀 Arquitetura e Engenharia em Bash
Varredura com 'kubectl get rolebindings,clusterrolebindings -o json', mapeamento de ServiceAccounts vinculadas a roles com privilégio de cluster-admin, identificação de bindings sem pods associados e geração de relatório de risco.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`kubectl, jq, awk, sort`

## 📌 Exemplo de Execução CLI
```bash
./rbac_audit.sh --find-admins --detect-wildcards --report /var/log/rbac_risks.json
```
