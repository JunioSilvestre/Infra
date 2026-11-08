# Deploy de Registry Mirror Local com Autenticação e Cache de Imagens Públicas

## 1. Cenário de Produção Real
Cluster de desenvolvimento com centenas de estações batendo no limite de rate limit do Docker Hub (HTTP 429 Too Many Requests).

## 2. O Problema Real
Centralizar o cache de imagens públicas dentro da rede corporativa local com economia de link e zero falhas de pull.

## 3. Arquitetura e Engenharia da Solução
Instalação do Docker Registry 2 em modo proxy cache com TLS mútuo e configuração nos clientes via daemon.json registry-mirrors.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Docker Registry v2, Let's Encrypt / Internal CA, Nginx Proxy, Docker daemon.json
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
docker run -d -p 5000:5000 -e REGISTRY_PROXY_REMOTEURL=https://registry-1.docker.io --name mirror registry:2
```
