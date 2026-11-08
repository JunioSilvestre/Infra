# Gateway de Acesso Remoto VPN Seguro Integrado com Okta SAML e MFA

## 1. Cenário de Produção Real
Engenheiros e consultores de tecnologia trabalhando remotamente precisam acessar subnets privadas da nuvem com autenticação forte.

## 2. O Problema Real
Eliminar arquivos de certificados locais compartilhados forçando autenticação através do provedor de identidade corporativo com duplo fator.

## 3. Arquitetura e Engenharia da Solução
Módulo Terraform provisionando OpenVPN Access Server em cluster com autenticação federada SAML 2.0 (Okta) e isolamento por grupos de acesso.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** OpenVPN Access Server, Okta SAML 2.0, Multi-Factor Authentication (MFA), Remote Access
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
sacli --key 'auth.module.type' ConfigQuery
```
