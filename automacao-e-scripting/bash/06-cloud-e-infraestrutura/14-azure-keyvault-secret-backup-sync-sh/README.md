# 14 — Sincronizador e Backup Criptografado Offline de Segredos do Azure Key Vault

## 🏢 Cenário de Negócios e Produção Real
Disaster Recovery e planos de contingência contra exclusão acidental ou sequestro de conta em nuvem pública.

### ⚠️ O Problema Real
Se o Azure Key Vault for corrompido ou o tenant sofrer bloqueio, as chaves criptográficas da empresa são perdidas.

## 🚀 Arquitetura e Engenharia em Bash
Download dos backups seguros de chaves e segredos em formato binário criptografado nativo da Microsoft ('az keyvault secret backup'), gravação em disco local seguro e verificação de integridade.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`az, jq, openssl, tar`

## 📌 Exemplo de Execução CLI
```bash
./keyvault_backup.sh --vault-name kv-prod-corp --output-dir /secure/keyvault_backup
```
