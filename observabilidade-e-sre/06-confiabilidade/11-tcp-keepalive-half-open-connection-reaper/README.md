# Detecção e Limpeza de Conexões TCP Zumbis (Half-Open Connections)

## 1. Cenário de Produção Real
Firewalls intermediários derrubavam conexões inativas silenciosamente, deixando sockets abertos nos servidores e esgotando a tabela de arquivos.

## 2. O Problema Real
Configurar probes de TCP Keepalive no kernel do Linux para detectar sockets mortos e liberar recursos de memória em minutos.

## 3. Arquitetura e Engenharia da Solução
Ajuste de parâmetros de kernel no Linux (`tcp_keepalive_time = 300`, `tcp_keepalive_probes = 5`, `tcp_keepalive_intvl = 15`).

## 4. Ferramentas e Tecnologias
- **Ecossistema:** TCP Keepalive, Linux Kernel Networking, Socket Hygiene, Resource Leaks
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
sysctl -a | grep keepalive
```
