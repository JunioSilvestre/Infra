# Proxy Protetor de Docker Socket para Ferramentas de Observabilidade e Portainer

## 1. Cenário de Produção Real
Serviços de monitoramento e agentes de métricas precisam de métricas de containers, mas expor /var/run/docker.sock direto dá privilégio de root no host.

## 2. O Problema Real
Mitigar escalação de privilégios interceptando chamadas à API Docker e permitindo apenas requisições GET seguras.

## 3. Arquitetura e Engenharia da Solução
Deploy de container HAProxy configurado especificamente para filtrar verbos POST/DELETE e bloquear montagem de volumes privilegiados.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** TecnologiaHAProxy, Docker Socket, Linux UNIX Sockets, Docker API
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
docker run -d --name docker-proxy -v /var/run/docker.sock:/var/run/docker.sock:ro -e POST=0 -p 2375:2375 tecnativa/docker-socket-proxy
```
