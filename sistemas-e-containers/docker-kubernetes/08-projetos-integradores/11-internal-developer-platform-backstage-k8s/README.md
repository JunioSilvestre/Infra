# Portal de Engenharia de Plataforma Interna (IDP) Integrado com Backstage

## 1. Cenário de Produção Real
Centenas de desenvolvedores da empresa perdiam tempo abrindo chamados para criar novos microsserviços, databases e pipelines.

## 2. O Problema Real
Disponibilizar um catálogo de autosserviço (Self-Service) onde um desenvolvedor clica em um botão e ganha um repositório com deploy ativo.

## 3. Arquitetura e Engenharia da Solução
Deploy do Spotify Backstage no Kubernetes integrado ao ArgoCD, Crossplane (IaC) e GitHub para provisionamento com padrões dourados (Golden Paths).

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Spotify Backstage, ArgoCD, Crossplane, Kubernetes, PostgreSQL
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kubectl get backstage -n idp-system
```
