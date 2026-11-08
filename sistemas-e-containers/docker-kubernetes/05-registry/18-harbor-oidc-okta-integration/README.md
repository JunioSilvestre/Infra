# Autenticação Corporativa e Single Sign-On (SSO) no Registry com Okta e OIDC

## 1. Cenário de Produção Real
Engenheiros gerenciavam usuários e senhas locais no Harbor, dificultando o desprovisionamento imediato quando um funcionário saía da empresa.

## 2. O Problema Real
Centralizar toda a autenticação e autorização de acesso ao registry no provedor de identidades corporativo da empresa.

## 3. Arquitetura e Engenharia da Solução
Configuração de OpenID Connect (OIDC) no Harbor conectado ao Okta com mapeamento dinâmico de grupos de segurança para projetos internos.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Harbor OIDC, Okta SSO, Enterprise Identity Management, RBAC
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
curl -s https://harbor.internal/api/v2.0/systeminfo | jq .auth_mode
```
