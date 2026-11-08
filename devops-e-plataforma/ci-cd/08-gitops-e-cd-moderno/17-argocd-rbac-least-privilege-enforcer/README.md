# 17 — Auditor e Enforcer de Permissões de Menor Privilégio no RBAC do ArgoCD

## 🏢 Cenário de Produção e Vida Real
Segregação de acessos no painel e CLI do ArgoCD para desenvolvedores, operadores e administradores.

### ⚠️ O Problema Real
Configurações padrão onde todos os desenvolvedores têm permissão de 'admin' no ArgoCD.

## 🚀 Arquitetura e Engenharia de CI/CD
Definição de papéis granulares em 'argocd-rbac-cm' baseados em grupos do provedor de identidade SSO (OIDC/SAML), restringindo ações de 'sync' e 'delete' por projeto e namespace.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`argocd, oidc, yaml`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
argocd admin settings rbac can dev-team sync 'app-prod'
```
