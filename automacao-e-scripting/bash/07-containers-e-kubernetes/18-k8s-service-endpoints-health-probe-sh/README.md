# 18 — Auditor de Integridade de Endpoints e Slices de Serviços Kubernetes

## 🏢 Cenário de Negócios e Produção Real
Serviços do Kubernetes (Services) que param de receber conexões mesmo com pods aparentemente rodando.

### ⚠️ O Problema Real
Erros de seletores (labels incorretas) ou falhas no EndpointSlice deixam o Service sem nenhum pod vinculado.

## 🚀 Arquitetura e Engenharia em Bash
Varredura de todos os Services do cluster com kubectl, checagem se o recurso possui endpoints ativos ('kubectl get endpointslices'), identificação de Services órfãos e teste de resolução DNS interna (CoreDNS).

## 🛠️ Ferramentas Nativas Linux Utilizadas
`kubectl, jq, dig, column`

## 📌 Exemplo de Execução CLI
```bash
./audit_k8s_endpoints.sh --namespace prod --report /tmp/endpoints.md
```
