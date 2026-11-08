# Governança Estrita de Memória e CPU com cgroups v2 em Ambientes de Alta Densidade

## 1. Cenário de Produção Real
Sistemas de trading algorítmico enfrentam riscos de degradação catastrófica se um container secundário sofrer leak de memória e ativar o OOM-Killer do host.

## 2. O Problema Real
Controlar precisamente memory.high, memory.max e throttle de CPU com cgroups v2 evitando penalidades de latência no kernel.

## 3. Arquitetura e Engenharia da Solução
Isolamento com docker run --memory-reservation, --memory, --cpu-shares e inspeção contínua via /sys/fs/cgroup/system.slice.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Docker Engine, Linux cgroups v2, systemd-cgls, bpftrace
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
docker run -d --name risk-engine --memory=4g --memory-reservation=3.5g --cpus=2.0 --memory-swappiness=0 trading-app:v1
```
