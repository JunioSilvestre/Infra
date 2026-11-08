# Provisionamento Autônomo de Ambientes Efêmeros por Pull Request com ArgoCD

## 1. Cenário de Produção Real
Times de produto demoravam semanas para validar funcionalidades porque os ambientes de staging ficavam sempre bloqueados e poluídos.

## 2. O Problema Real
Criar um ambiente completo, com DNS temporário e banco descartável a cada abertura de PR e destruí-lo no merge.

## 3. Arquitetura e Engenharia da Solução
Uso de ArgoCD ApplicationSet com Pull Request Generator (GitHub API) criando Namespaces e Ingresses descartáveis automaticamente.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** ArgoCD ApplicationSet, GitHub PR Generator, Ephemeral Environments
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kubectl get applications -n argocd -l pr-number=428
```
