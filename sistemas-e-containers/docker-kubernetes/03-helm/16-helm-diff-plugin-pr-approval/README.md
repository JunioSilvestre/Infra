# Geração Automatizada de Diff Visual em Pull Requests com Helm-Diff

## 1. Cenário de Produção Real
Aprovações de mudanças em ambientes de produção eram feitas às cegas sem clareza exata de quais campos seriam modificados no cluster.

## 2. O Problema Real
Apresentar um diff detalhado no corpo do PR mostrando exatamente o que será criado, modificado ou destruído no Kubernetes.

## 3. Arquitetura e Engenharia da Solução
GitHub Action executando `helm diff upgrade` contra o cluster ativo e postando o resultado colorido como comentário no Pull Request.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** helm-diff plugin, GitHub Actions Pull Request Automation, GitOps Review
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
helm diff upgrade my-app ./chart -f values.prod.yaml --suppress-secrets
```
