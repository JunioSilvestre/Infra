# Entrega Canário com Afinidade de Sessão Baseada em Cookie (Sticky Canary)

## 1. Cenário de Produção Real
Aplicações legadas de cartões de crédito exigem que um usuário que começou o checkout na versão canário permaneça nela até finalizar.

## 2. O Problema Real
Evitar alternância indesejada de versões entre requisições consecutivas do mesmo cliente durante o período de testes.

## 3. Arquitetura e Engenharia da Solução
Anotações de Ingress combinando `canary-by-cookie` com hashing consistente para direcionar a mesma sessão ao mesmo backend.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Ingress Nginx Cookie Affinity, Stateful Canaries, Session Consistency
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kubectl annotate ingress my-ingress nginx.ingress.kubernetes.io/canary-by-cookie='canary_tester'
```
