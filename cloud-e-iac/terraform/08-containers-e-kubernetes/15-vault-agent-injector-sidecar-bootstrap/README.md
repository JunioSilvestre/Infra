# Deploy do Vault Agent Injector para Injeção Automática de Segredos em Memória

## 1. Cenário de Produção Real
Aplicações legadas que não conseguiam consumir APIs do Vault precisavam receber senhas diretamente no sistema de arquivos local.

## 2. O Problema Real
Injetar credenciais rotativas dinâmicas em arquivos `/vault/secrets/` montados em memória RAM (tmpfs) sem reiniciar a aplicação.

## 3. Arquitetura e Engenharia da Solução
Instalação do Vault Helm chart em modo injector-only via Terraform, conectando ao cluster Vault central via Kubernetes Auth Method.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Terraform, HashiCorp Vault Injector, Kubernetes Auth Method, tmpfs Secrets
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform apply -target=helm_release.vault_injector
```
