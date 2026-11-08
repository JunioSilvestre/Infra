# Acesso Multi-Contas a Repositórios ECR com Permissões IAM de Mínimo Privilégio

## 1. Cenário de Produção Real
Clusters Kubernetes em contas de nuvem de Desenvolvimento precisavam puxar imagens de repositórios centrais de Segurança.

## 2. O Problema Real
Evitar compartilhamento de chaves estáticas de acesso AWS que violam boas práticas de conformidade e governança de nuvem.

## 3. Arquitetura e Engenharia da Solução
Criação de políticas de repositório no ECR (Resource-Based Policies) e autorização granular de ServiceAccounts de clusters remotos via IRSA.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** AWS ECR Repository Policies, IAM Roles for Service Accounts (IRSA), Multi-Account Cloud
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
aws ecr get-repository-policy --repository-name core-banking
```
