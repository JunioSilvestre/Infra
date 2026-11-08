# 05 — Sincronizador Leve de Segredos entre HashiCorp Vault e Kubernetes Secrets

## 🏢 Cenário de Negócios e Produção Real
Clusters Kubernetes que precisam consumir senhas e certificados centralizados no Vault sem depender de operadores pesados.

### ⚠️ O Problema Real
Segredos em Kubernetes são codificados apenas em base64; a sincronização manual gera defasagem e erros de digitação.

## 🚀 Arquitetura e Engenharia em Bash
Consulta autenticada ao Vault via curl/CLI, validação das chaves, conversão segura para manifesto base64 de Secret Kubernetes e aplicação atômica com 'kubectl apply -f -' sem salvar o segredo em disco.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`curl, jq, base64, kubectl`

## 📌 Exemplo de Execução CLI
```bash
./sync_k8s_secrets.sh --vault-path secret/data/prod/db --k8s-secret db-credentials --namespace backend
```
