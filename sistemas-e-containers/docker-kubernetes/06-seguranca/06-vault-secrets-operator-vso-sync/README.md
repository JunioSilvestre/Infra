# Injeção Dinâmica de Segredos do HashiCorp Vault via Vault Secrets Operator

## 1. Cenário de Produção Real
Desenvolvedores injetavam credenciais de banco e senhas diretamente em variáveis de ambiente estáticas nos manifests do Kubernetes.

## 2. O Problema Real
Eliminar segredos estáticos sincronizando dinamicamente credenciais do Vault com rotação automática sem necessidade de sidecars pesados.

## 3. Arquitetura e Engenharia da Solução
Deploy do Vault Secrets Operator (VSO) com autenticação via Kubernetes ServiceAccount e CRDs `VaultConnection` e `VaultStaticSecret`.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** HashiCorp Vault, Vault Secrets Operator (VSO), Secret Rotation, Zero-Trust
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kubectl get vaultstaticsecret db-credentials -o yaml
```
