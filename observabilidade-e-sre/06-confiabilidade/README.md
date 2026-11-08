# Módulo: Engenharia de Confiabilidade e Resiliência Estrutural

Padrões de projeto resilientes, tolerância a falhas, autoscaling elástico, isolamento de recursos e estratégias anti-fragilidade.

Este módulo contém 20 projetos práticos de nível sênior baseados no dia a dia real de engenheiros de Site Reliability Engineering (SRE), Observabilidade e Plataforma operando em empresas de missão crítica nos estados de Nova York (NY), Massachusetts (MA) e Connecticut (CT).

## Índice de Projetos

| Diretório | Nome do Projeto | Documentação |
|:---|:---|:---:|
| `01-multi-az-stateless-fleet-resilience` | Arquitetura de Frota sem Estado Resiliente à Queda Completa de uma AZ | [Visualizar](./01-multi-az-stateless-fleet-resilience/README.md) |
| `02-active-active-cockroachdb-cluster` | Banco de Dados Transacional Distribuído Ativo-Ativo com CockroachDB | [Visualizar](./02-active-active-cockroachdb-cluster/README.md) |
| `03-keda-lag-autoscaling-kafka-fleet` | Autoescalonamento Elástico Baseado no Lag de Filas Apache Kafka com KEDA | [Visualizar](./03-keda-lag-autoscaling-kafka-fleet/README.md) |
| `04-graceful-degradation-rate-limiting` | Mecanismo de Degradação Graciosa com Rate Limiting e Fallback em Cache | [Visualizar](./04-graceful-degradation-rate-limiting/README.md) |
| `05-deadlock-detection-distributed-systems` | Detecção e Mitigação Automatizada de Deadlocks em Sistemas Distribuídos | [Visualizar](./05-deadlock-detection-distributed-systems/README.md) |
| `06-zero-downtime-database-migrations` | Automação de Migrações de Esquema de Banco de Dados sem Parada (Zero-Downtime) | [Visualizar](./06-zero-downtime-database-migrations/README.md) |
| `07-stateless-session-redis-sentinel-ha` | Gerenciamento de Sessões de Usuário em Alta Disponibilidade com Redis Sentinel | [Visualizar](./07-stateless-session-redis-sentinel-ha/README.md) |
| `08-jitter-exponential-backoff-retry-engine` | Motor de Retentativas Resiliente com Backoff Exponencial e Jitter Aleatório | [Visualizar](./08-jitter-exponential-backoff-retry-engine/README.md) |
| `09-idempotent-payment-api-redis-locks` | Garantia de Idempotência Estrita em APIs de Cobrança com Travas Redis | [Visualizar](./09-idempotent-payment-api-redis-locks/README.md) |
| `10-bulkhead-threadpool-isolation-pattern` | Isolamento de Pools de Conexões e Threads pelo Padrão Bulkhead | [Visualizar](./10-bulkhead-threadpool-isolation-pattern/README.md) |
| `11-tcp-keepalive-half-open-connection-reaper` | Detecção e Limpeza de Conexões TCP Zumbis (Half-Open Connections) | [Visualizar](./11-tcp-keepalive-half-open-connection-reaper/README.md) |
| `12-health-check-decoupling-deep-vs-shallow` | Desacoplamento de Health Checks: Sondas Rasas (Shallow) vs Profundas (Deep) | [Visualizar](./12-health-check-decoupling-deep-vs-shallow/README.md) |
| `13-poison-pill-message-dead-letter-isolation` | Isolamento e Quarentena de Mensagens Tóxicas (Poison Pills) em Filas | [Visualizar](./13-poison-pill-message-dead-letter-isolation/README.md) |
| `14-memory-swappiness-tuning-high-load` | Tuning de Swappiness e Prevenção de Thrashing de Memória em Alta Carga | [Visualizar](./14-memory-swappiness-tuning-high-load/README.md) |
| `15-canary-rollback-statistical-anomaly-gate` | Quality Gate Estatístico com Teste de Hipóteses para Rollback Automático | [Visualizar](./15-canary-rollback-statistical-anomaly-gate/README.md) |
| `16-high-traffic-dns-cache-poisoning-resilience` | Resiliência e Cache Local de DNS em Escala de 100k RPS com NodeLocal DNS | [Visualizar](./16-high-traffic-dns-cache-poisoning-resilience/README.md) |
| `17-split-brain-fencing-stonith-baremetal` | Mecanismos de Fencing STONITH contra Split-Brain em Clusters Bare-Metal | [Visualizar](./17-split-brain-fencing-stonith-baremetal/README.md) |
| `18-database-connection-pool-tuning-pgbouncer` | Dimensionamento e Tuning de Pool de Conexões de Banco com PgBouncer | [Visualizar](./18-database-connection-pool-tuning-pgbouncer/README.md) |
| `19-asynchronous-dead-letter-reprocessing-worker` | Worker Automatizado de Reprocessamento e Correção de Mensagens em DLQ | [Visualizar](./19-asynchronous-dead-letter-reprocessing-worker/README.md) |
| `20-disaster-recovery-data-synchronization-auditor` | Auditor Contínuo de Latência e Integridade de Replicação entre Regiões | [Visualizar](./20-disaster-recovery-data-synchronization-auditor/README.md) |
