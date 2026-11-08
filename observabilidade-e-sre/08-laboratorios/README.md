# Módulo: Laboratórios Práticos e Simulações Operacionais de SRE

Simulação de incidentes graves, degradação de rede, perda de quórum de TSDB, testes de estresse e drills de confiabilidade.

Este módulo contém 20 projetos práticos de nível sênior baseados no dia a dia real de engenheiros de Site Reliability Engineering (SRE), Observabilidade e Plataforma operando em empresas de missão crítica nos estados de Nova York (NY), Massachusetts (MA) e Connecticut (CT).

## Índice de Projetos

| Diretório | Nome do Projeto | Documentação |
|:---|:---|:---:|
| `01-simulated-network-latency-chaos-lab` | Laboratório de Injeção de Latência de Rede e Diagnóstico com Jaeger Tracing | [Visualizar](./01-simulated-network-latency-chaos-lab/README.md) |
| `02-simulated-prometheus-oom-recovery-lab` | Simulação de Esgotamento de Memória (OOM-Kill) no Prometheus e Recuperação | [Visualizar](./02-simulated-prometheus-oom-recovery-lab/README.md) |
| `03-simulated-cascading-failure-thundering-herd` | Reprodução e Mitigação de Falha em Cascata por Efeito Manada (Thundering Herd) | [Visualizar](./03-simulated-cascading-failure-thundering-herd/README.md) |
| `04-simulated-alert-fatigue-suppression-lab` | Laboratório de Supressão e Desduplicação de Tempestades de Alertas (Alert Storm) | [Visualizar](./04-simulated-alert-fatigue-suppression-lab/README.md) |
| `05-simulated-split-brain-consensus-loss-lab` | Simulação de Partição de Rede e Perda de Quórum em Cluster de Confiabilidade | [Visualizar](./05-simulated-split-brain-consensus-loss-lab/README.md) |
| `06-simulated-memory-leak-heap-profiling-lab` | Laboratório Prático de Localização de Vazamento de Memória com Pyroscope | [Visualizar](./06-simulated-memory-leak-heap-profiling-lab/README.md) |
| `07-simulated-disk-pressure-pod-eviction-lab` | Reprodução e Resolução de Pânico de Ejeção de Pods por Falta de Espaço em Disco | [Visualizar](./07-simulated-disk-pressure-pod-eviction-lab/README.md) |
| `08-simulated-dns-outage-and-recovery-lab` | Simulação de Apagão Completo de DNS Interno e Restauração de Emergência | [Visualizar](./08-simulated-dns-outage-and-recovery-lab/README.md) |
| `09-simulated-flaky-readiness-probe-cascade` | Laboratório de Diagnóstico de Queda de Serviços por Probes de Saúde Frágeis | [Visualizar](./09-simulated-flaky-readiness-probe-cascade/README.md) |
| `10-simulated-conntrack-exhaustion-lab` | Reprodução e Mitigação de Esgotamento de Tabela Conntrack no Kernel Linux | [Visualizar](./10-simulated-conntrack-exhaustion-lab/README.md) |
| `11-simulated-slow-loris-ddos-defense-lab` | Simulação de Ataque Slowloris e Configuração de Defesa no Balanceador | [Visualizar](./11-simulated-slow-loris-ddos-defense-lab/README.md) |
| `12-simulated-database-connection-pool-starvation` | Simulação de Esgotamento de Pool de Conexões e Otimização com PgBouncer | [Visualizar](./12-simulated-database-connection-pool-starvation/README.md) |
| `13-simulated-broken-dependency-circuit-breaker-lab` | Laboratório de Resiliência com Circuit Breaker contra Serviços Lentos | [Visualizar](./13-simulated-broken-dependency-circuit-breaker-lab/README.md) |
| `14-simulated-rogue-process-fork-bomb-lab` | Simulação de Fork-Bomb e Contenção com Limites de PIDs no Linux | [Visualizar](./14-simulated-rogue-process-fork-bomb-lab/README.md) |
| `15-simulated-corrupted-wal-log-recovery-lab` | Laboratório de Reparo de WAL Corrompido em Bancos de Dados Relacionais | [Visualizar](./15-simulated-corrupted-wal-log-recovery-lab/README.md) |
| `16-simulated-cpu-throttling-cgroups-lab` | Diagnóstico e Eliminação de Estrangulamento de CPU (CPU Throttling) em Pods | [Visualizar](./16-simulated-cpu-throttling-cgroups-lab/README.md) |
| `17-simulated-stale-cache-invalidation-lab` | Laboratório de Resolução de Dados Defasados e Invalidação de Cache em Massa | [Visualizar](./17-simulated-stale-cache-invalidation-lab/README.md) |
| `18-simulated-ssl-chain-incomplete-outage-lab` | Simulação de Erro de Cadeia Incompleta de Certificados SSL (Intermediate CA Missing) | [Visualizar](./18-simulated-ssl-chain-incomplete-outage-lab/README.md) |
| `19-simulated-clock-skew-ntp-drift-lab` | Laboratório de Diagnóstico de Desvio de Relógio (Clock Skew) e Falha de Tokens | [Visualizar](./19-simulated-clock-skew-ntp-drift-lab/README.md) |
| `20-simulated-complete-blackout-disaster-recovery-drill` | Laboratório Definitivo de Recuperação de Apagão Total em Menos de 30 Minutos | [Visualizar](./20-simulated-complete-blackout-disaster-recovery-drill/README.md) |
