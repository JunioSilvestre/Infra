# Validação de Pré-Promoção com Webhooks e Testes de Fumaça Sintéticos

## 1. Cenário de Produção Real
Antes de virar o tráfego no deploy Blue-Green, é fundamental garantir que rotas essenciais de login e saúde estejam funcionando 100%.

## 2. O Problema Real
Executar um conjunto automatizado de testes sintéticos contra a versão Green inativa e apenas promover se todos os testes passarem.

## 3. Arquitetura e Engenharia da Solução
Configuração de Webhook step no Argo Rollouts disparando container de Newman/Postman e avaliando o código de saída HTTP.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Argo Rollouts Webhooks, Newman/Postman CLI, Automated Smoke Tests
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kubectl argo rollouts status rollout customer-portal -n prod
```
