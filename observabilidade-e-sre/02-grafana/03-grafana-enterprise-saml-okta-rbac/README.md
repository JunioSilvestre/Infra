# Autenticação Corporativa SAML com Okta e Controle Granular de Acesso (RBAC)

## 1. Cenário de Produção Real
Engenheiros juniores tinham acesso de edição a painéis críticos de produção, causando alterações acidentais de consultas durante incidentes.

## 2. O Problema Real
Centralizar o login via Single Sign-On corporativo e atribuir permissões automáticas de Leitor/Editor baseadas nos grupos do Okta.

## 3. Arquitetura e Engenharia da Solução
Configuração do `grafana.ini` com SAML 2.0 ativado, mapeamento dinâmico de grupos de segurança e isolamento por Organizações.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Grafana Enterprise, Okta SAML 2.0, Role-Based Access Control (RBAC), SSO
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
curl -s http://grafana.corp/api/org/users
```
