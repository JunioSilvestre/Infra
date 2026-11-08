# Autoridade Certificadora Intermediária (CA) Privada com HashiCorp Vault

## 1. Cenário de Produção Real
Certificados SSL/TLS internos venciam sem aviso prévio ou eram emitidos por CAs públicas caras para domínios internos de infraestrutura.

## 2. O Problema Real
Criar uma infraestrutura completa de chave pública (PKI) interna, emitindo certificados x509 de curta duração de forma autônoma.

## 3. Arquitetura e Engenharia da Solução
Módulo Terraform configurando o segredo `vault_pki_secret_backend_root` e `vault_pki_secret_backend_intermediate` com URLs de CRL e rotação automática.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** HashiCorp Vault PKI Engine, X.509 Certificates, Internal CA, Mutual TLS
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
vault read pki/cert/ca_chain
```
