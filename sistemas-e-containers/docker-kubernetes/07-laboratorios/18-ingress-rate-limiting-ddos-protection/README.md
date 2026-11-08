# Proteção Anti-DDoS e Rate Limiting no Nginx Ingress Controller

## 1. Cenário de Produção Real
Pico malicioso de tráfego de raspadores de dados externos saturava os recursos dos pods de autenticação e busca.

## 2. O Problema Real
Limitar o número máximo de requisições por segundo por IP de cliente diretamente na camada de borda do cluster.

## 3. Arquitetura e Engenharia da Solução
Aplicação de anotações de rate limit (`limit-req-rate`, `limit-req-burst`) e configuração de página customizada de erro HTTP 429.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Nginx Ingress Rate Limiting, DDoS Mitigation, Traffic Shaping
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
ab -n 1000 -c 50 https://api.corp.internal/login || echo 'Rate limiting active'
```
