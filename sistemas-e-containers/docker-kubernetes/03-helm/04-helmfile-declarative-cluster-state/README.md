# Gerenciamento Declarativo de Múltiplos Ambientes e Clusters com Helmfile

## 1. Cenário de Produção Real
Operar mais de 30 charts (Prometheus, Ingress, Vault, Cert-Manager) manualmente com comandos `helm install` era insustentável.

## 2. O Problema Real
Definir todo o catálogo de aplicações de infraestrutura de forma declarativa, versionada e idempotente em um único manifesto.

## 3. Arquitetura e Engenharia da Solução
Configuração do `helmfile.yaml` com suporte a secrets criptografados via helm-secrets, environments (dev/stage/prod) e hooks de sincronismo.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Helmfile, helm-secrets, Sops, Multi-Cluster Management
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
helmfile -e production diff && helmfile -e production apply
```
