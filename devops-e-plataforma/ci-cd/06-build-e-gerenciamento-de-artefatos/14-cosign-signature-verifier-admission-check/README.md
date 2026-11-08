# 14 — Verificador de Assinaturas Cosign Pré-Deploy em Pipelines e Admission Controllers

## 🏢 Cenário de Produção e Vida Real
Validação de integridade antes de submeter novos pods para execução no Kubernetes.

### ⚠️ O Problema Real
Imagens que foram alteradas no registry ou que não possuem assinatura válida passam direto para o cluster.

## 🚀 Arquitetura e Engenharia de CI/CD
Script de verificação que consulta a chave pública corporativa ou identidade OIDC, valida a assinatura criptográfica e rejeita o deploy com log claro caso a assinatura seja inválida.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`cosign, jq, bash`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
cosign verify --key cosign.pub ghcr.io/my-org/my-app:v1.2.0
```
