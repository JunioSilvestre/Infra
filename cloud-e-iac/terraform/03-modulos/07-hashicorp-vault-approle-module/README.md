# Módulo de Provisionamento de Segredos e Políticas no HashiCorp Vault

## 1. Cenário de Produção Real
Administradores de segurança passavam dias configurando manualmente políticas HCL e AppRoles para cada nova aplicação que subia.

## 2. O Problema Real
Automatizar o provisionamento de credenciais de curto prazo, políticas de mínimo privilégio e caminhos de segredos via código.

## 3. Arquitetura e Engenharia da Solução
Módulo Vault gerenciando `vault_policy`, `vault_approle_auth_backend_role` e geração de credenciais dinâmicas para PostgreSQL.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** HashiCorp Vault, AppRole Authentication, Dynamic Secrets, DevSecOps
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform apply -target=module.vault_auth_backend
```
