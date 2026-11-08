# 02 — Autenticação Federada Azure com Workload Identity Federation via OIDC

## 🏢 Cenário de Produção e Vida Real
Deploy contínuo no Microsoft Azure sem armazenamento de Client Secrets de Service Principal.

### ⚠️ O Problema Real
Client Secrets da Azure expiram a cada ano e exigem manutenção manual que derruba esteiras quando vencem.

## 🚀 Arquitetura e Engenharia de CI/CD
Criação de Federated Identity Credential no Azure AD (Entra ID) apontando para o repositório e branch, autenticação no job via azure/login com suporte nativo a OIDC.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`azure/login, az-cli`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
az ad app federated-credential create --id $APP_ID --parameters cred.json
```
