# Diagnóstico de Consumo Excessivo de Kernel e CPU em Containers com eBPF

## 1. Cenário de Produção Real
Serviço de busca corporativa apresentava picos misteriosos de latência de CPU sem que métricas normais de userspace explicassem a causa.

## 2. O Problema Real
Identificar gargalos em tempo de execução causados por context switches e contenção de locks do kernel dentro de containers.

## 3. Arquitetura e Engenharia da Solução
Mapeamento de threads usando perf-tools e scripts BCC/eBPF anexados aos cgroups específicos do container.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Linux perf, BCC Tools, eBPF, FlameGraph, Docker inspect
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
perf record -F 99 -p $(docker inspect --format '{{.State.Pid}}' search-api) -g -- sleep 30 && perf report
```
