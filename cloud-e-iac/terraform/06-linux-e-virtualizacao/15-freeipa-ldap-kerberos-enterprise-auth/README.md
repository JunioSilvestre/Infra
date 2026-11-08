# Autenticação Centralizada Linux com FreeIPA, Kerberos e Integração com Active Directory

## 1. Cenário de Produção Real
Administradores precisavam gerenciar usuários e chaves SSH individualmente em mais de 400 servidores Linux corporativos.

## 2. O Problema Real
Centralizar o controle de acesso de usuários, grupos sudo e chaves públicas SSH em uma autoridade de identidade única e confiável.

## 3. Arquitetura e Engenharia da Solução
Provisionamento de nós clientes FreeIPA/SSSD integrados ao domínio com Single Sign-On (SSO) Kerberos e sincronização com Active Directory.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** FreeIPA, SSSD, Kerberos, LDAP, Active Directory Cross-Forest Trust
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
ipa user-find && getent passwd admin
```
