# Gerenciamento Seguro de Chaves Criptográficas com Azure Key Vault Managed HSM

## 1. Cenário de Produção Real
Requisitos de segurança bancária de Wall Street exigem chaves de criptografia FIPS 140-2 Nível 3 para proteção de bancos de dados relacionais.

## 2. O Problema Real
Garantir custódia inviolável de chaves de criptografia e permitir que o Azure Storage e SQL usem Customer-Managed Keys (CMK).

## 3. Arquitetura e Engenharia da Solução
Deploy de Azure Key Vault Managed HSM, geração de chaves RSA de 4096 bits e configuração de rotação automática de chaves criptográficas.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Azure Key Vault, Managed HSM, Customer-Managed Keys (CMK), FIPS 140-2 Level 3
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
az keyvault key show --vault-name kv-corp-prod --name sql-encryption-key
```
