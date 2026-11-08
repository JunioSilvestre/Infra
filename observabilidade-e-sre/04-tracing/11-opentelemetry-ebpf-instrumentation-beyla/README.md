# Auto-Instrumentação de Camada de Rede e HTTP em Nível de Kernel com Grafana Beyla

## 1. Cenário de Produção Real
Aplicações críticas em C++ e Go compiladas estaticamente não suportavam bytecode injection tradicional de agentes Java/Node.

## 2. O Problema Real
Capturar automaticamente métricas de latência HTTP/gRPC e spans sem tocar no binário e sem recompilar o software da empresa.

## 3. Arquitetura e Engenharia da Solução
Deploy do Grafana Beyla como DaemonSet utilizando eBPF e uprobes para inspecionar chamadas de sistema de sockets de rede.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Grafana Beyla, eBPF Auto-Instrumentation, Linux uprobes, Zero-Touch APM
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
beyla --config=/etc/beyla/beyla-config.yml
```
