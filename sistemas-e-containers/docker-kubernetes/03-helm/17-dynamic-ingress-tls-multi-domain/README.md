# Abstração de Ingress Multi-Domínio e Multi-Host com Roteamento Avançado

## 1. Cenário de Produção Real
Aplicações corporativas que operam múltiplos domínios e caminhos exigiam manifests de Ingress repetitivos e complexos.

## 2. O Problema Real
Desenvolver um template reutilizável no chart capaz de iterar sobre listas dinâmicas de hosts, paths, backends e anotações.

## 3. Arquitetura e Engenharia da Solução
Uso de loops `{{- range .Values.ingress.hosts }}` com injeção automática de anotações de rate limit, CORS e TLS secrets.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Helm Templates, Ingress Nginx, Go Templating, Multi-Domain Hosting
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
helm template . -f values.multi-host.yaml | grep -A 15 'rules:'
```
