# Módulo: Laboratórios Práticos e Simulações Operacionais

Ambientes controlados para reprodução de falhas complexas, drills de SRE, testes de carga e testes de recuperação de desastres.

Este módulo contém 20 projetos práticos de nível sênior baseados no dia a dia real de engenheiros de SRE, DevOps e Plataforma operando em empresas de alta escala (Fintechs, Hospitais, Seguradoras e Big Techs) nos polos de Nova York (NY), Massachusetts (MA) e Connecticut (CT).

## Índice de Projetos

| Diretório | Nome do Projeto | Documentação |
|:---|:---|:---:|
| `01-local-multi-node-ha-kind-cluster` | Laboratório de Cluster Multi-Control-Plane e Multi-Worker com Kind | [Visualizar](./01-local-multi-node-ha-kind-cluster/README.md) |
| `02-simulated-etcd-quorum-loss-recovery` | Simulação e Recuperação de Perda Total de Quórum do etcd | [Visualizar](./02-simulated-etcd-quorum-loss-recovery/README.md) |
| `03-dns-outage-conntrack-stress-lab` | Reprodução e Mitigação de Esgotamento de Tabela de Conntrack e Queda de DNS | [Visualizar](./03-dns-outage-conntrack-stress-lab/README.md) |
| `04-oom-killer-memory-leak-troubleshooting` | Análise Prática de Vazamento de Memória e Ação do OOM-Killer em Pods | [Visualizar](./04-oom-killer-memory-leak-troubleshooting/README.md) |
| `05-ingress-cert-expiration-outage-drill` | Simulação de Expiração de Certificados TLS de Ingress e Renovação de Emergência | [Visualizar](./05-ingress-cert-expiration-outage-drill/README.md) |
| `06-storage-filesystem-corruption-csi-lab` | Recuperação de Corrupção de Sistema de Arquivos em Volumes Persistentes (PV) | [Visualizar](./06-storage-filesystem-corruption-csi-lab/README.md) |
| `07-network-partition-split-brain-lab` | Simulação de Partição de Rede e Prevenção de Split-Brain com Chaos Mesh | [Visualizar](./07-network-partition-split-brain-lab/README.md) |
| `08-pod-eviction-cascading-failure-lab` | Reprodução e Resolução de Falhas em Cascata por Ejeção de Pods (Cascading Eviction) | [Visualizar](./08-pod-eviction-cascading-failure-lab/README.md) |
| `09-cross-zone-latency-degradation-lab` | Injeção de Latência Inter-Zonas e Otimização com Topology-Aware Routing | [Visualizar](./09-cross-zone-latency-degradation-lab/README.md) |
| `10-zombie-process-exhaustion-lab` | Esgotamento de Tabela de Processos (PIDs) do Host e Mitigação com PID Limits | [Visualizar](./10-zombie-process-exhaustion-lab/README.md) |
| `11-high-concurrency-load-testing-k6` | Teste de Carga de Alta Concorrência (100k RPS) com k6 e Cluster Autoscaler | [Visualizar](./11-high-concurrency-load-testing-k6/README.md) |
| `12-rogue-container-privilege-escalation` | Simulação Ofensiva de Escape de Container via Montagem Indevida de HostPath | [Visualizar](./12-rogue-container-privilege-escalation/README.md) |
| `13-coredns-cache-poisoning-simulation` | Auditoria e Teste de Resiliência de DNS contra Envenenamento de Respostas | [Visualizar](./13-coredns-cache-poisoning-simulation/README.md) |
| `14-flaky-readiness-probe-cascade-outage` | Diagnóstico de Apagão de Serviços Causado por Probes de Readiness Agressivas | [Visualizar](./14-flaky-readiness-probe-cascade-outage/README.md) |
| `15-statefulset-volume-expansion-live` | Expansão a Quente de Volume Persistente em Pods com Dados Ativos | [Visualizar](./15-statefulset-volume-expansion-live/README.md) |
| `16-node-drain-pdb-deadlock-resolution` | Desbloqueio de Deadlocks em Operações de Drenagem de Nós (kubectl drain) | [Visualizar](./16-node-drain-pdb-deadlock-resolution/README.md) |
| `17-service-cidr-exhaustion-mitigation` | Prevenção e Diagnóstico de Esgotamento da Faixa de IPs de Serviços (Service CIDR) | [Visualizar](./17-service-cidr-exhaustion-mitigation/README.md) |
| `18-ingress-rate-limiting-ddos-protection` | Proteção Anti-DDoS e Rate Limiting no Nginx Ingress Controller | [Visualizar](./18-ingress-rate-limiting-ddos-protection/README.md) |
| `19-ephemeral-scratchpad-storage-stress` | Isolamento e Controle de Consumo de Ephemeral Storage em Nós Compartilhados | [Visualizar](./19-ephemeral-scratchpad-storage-stress/README.md) |
| `20-ebpf-network-packet-drop-drill` | Diagnóstico e Rastreamento de Descarte de Pacotes com Cilium e Hubble CLI | [Visualizar](./20-ebpf-network-packet-drop-drill/README.md) |
