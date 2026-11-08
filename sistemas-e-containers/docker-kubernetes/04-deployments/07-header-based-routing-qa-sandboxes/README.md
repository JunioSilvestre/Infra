# Ambientes de Teste Dinâmicos em Produção via Header-Based Routing

## 1. Cenário de Produção Real
Desenvolvedores e analistas de QA precisavam testar pull requests em produção sem criar clusters separados caros para cada branch.

## 2. O Problema Real
Rotear requisições HTTP normais para o cluster estável, mas desviar requisições contendo `X-Beta-Tester: true` para o pod experimental.

## 3. Arquitetura e Engenharia da Solução
Regras de roteamento de Ingress Controller (Nginx Ingress / Traefik) avaliando headers e cookies específicos para direcionamento seletivo.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Nginx Ingress Annotations, Header Matching, Ephemeral Environments
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
curl -H 'X-Release-Candidate: true' https://api.corp.internal/v1/quote
```
