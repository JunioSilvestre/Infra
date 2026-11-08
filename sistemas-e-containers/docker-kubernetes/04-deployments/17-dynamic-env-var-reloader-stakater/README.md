# Rolling Update Automático de Pods na Alteração de ConfigMaps com Stakater Reloader

## 1. Cenário de Produção Real
Modificações em ConfigMaps e Secrets não reiniciavam os pods da aplicação, deixando serviços com configurações antigas em cache de memória.

## 2. O Problema Real
Garantir que qualquer alteração de configuração aplicada via GitOps dispare um rolling update seguro dos pods dependentes.

## 3. Arquitetura e Engenharia da Solução
Deploy do controlador Stakater Reloader observando anotações `reloader.stakater.com/auto: 'true'` em Deployments corporativos.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Stakater Reloader, Kubernetes ConfigMaps, Secrets Management
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kubectl apply -f configmap.yaml && kubectl rollout status deployment/auth-service
```
