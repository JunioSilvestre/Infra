# Módulo: Métricas Avançadas, Coleta e Arquitetura Prometheus

Projetos de engenharia de métricas de alta vazão, Thanos, VictoriaMetrics, regras de gravação e tuning de TSDB.

Este módulo contém 20 projetos práticos de nível sênior baseados no dia a dia real de engenheiros de Site Reliability Engineering (SRE), Observabilidade e Plataforma operando em empresas de missão crítica nos estados de Nova York (NY), Massachusetts (MA) e Connecticut (CT).

## Índice de Projetos

| Diretório | Nome do Projeto | Documentação |
|:---|:---|:---:|
| `01-thanos-multi-cluster-metric-federation` | Federação Global de Métricas com Thanos Sidecar e Armazenamento em S3 | [Visualizar](./01-thanos-multi-cluster-metric-federation/README.md) |
| `02-promql-recording-rules-optimization` | Otimização de Consultas Pesadas com Prometheus Recording Rules | [Visualizar](./02-promql-recording-rules-optimization/README.md) |
| `03-victoriametrics-high-churn-cluster` | Substituição de TSDB por VictoriaMetrics para Ambientes de Alta Rotatividade | [Visualizar](./03-victoriametrics-high-churn-cluster/README.md) |
| `04-prometheus-custom-go-exporter` | Desenvolvimento de Exportador Prometheus Customizado em Go para Serviços Legados | [Visualizar](./04-prometheus-custom-go-exporter/README.md) |
| `05-alertmanager-routing-pagerduty-slack` | Roteamento Inteligente de Alertas e Inibição de Ruído com Alertmanager | [Visualizar](./05-alertmanager-routing-pagerduty-slack/README.md) |
| `06-blackbox-exporter-synthetic-probing` | Monitoramento Sintético de Endpoints Críticos com Prometheus Blackbox Exporter | [Visualizar](./06-blackbox-exporter-synthetic-probing/README.md) |
| `07-high-cardinality-label-sanitization` | Detecção e Bloqueio de Explosão de Cardinalidade com Prometheus Metric Relabeling | [Visualizar](./07-high-cardinality-label-sanitization/README.md) |
| `08-promtool-rule-unit-testing-ci` | Esteira de Testes Unitários de Regras de Alerta com Promtool no CI/CD | [Visualizar](./08-promtool-rule-unit-testing-ci/README.md) |
| `09-cortex-horizontally-scalable-prometheus` | Arquitetura de Prometheus Multi-Tenant com Cortex em Larga Escala | [Visualizar](./09-cortex-horizontally-scalable-prometheus/README.md) |
| `10-process-exporter-linux-kernel-metrics` | Monitoramento Granular de Processos e Fios de Execução com Process Exporter | [Visualizar](./10-process-exporter-linux-kernel-metrics/README.md) |
| `11-prometheus-ha-deduplication-alertmanager` | Prometheus Duplo em Alta Disponibilidade com Deduplicação no Alertmanager | [Visualizar](./11-prometheus-ha-deduplication-alertmanager/README.md) |
| `12-snmp-exporter-datacenter-switches` | Monitoramento de Roteadores e Switches Físicos com Prometheus SNMP Exporter | [Visualizar](./12-snmp-exporter-datacenter-switches/README.md) |
| `13-prometheus-tsdb-compaction-tuning` | Ajuste Fino de Compactação de Blocos TSDB e Resolução de Erros de WAL | [Visualizar](./13-prometheus-tsdb-compaction-tuning/README.md) |
| `14-ipmi-exporter-baremetal-telemetry` | Telemetria de Sensores de Hardware e Temperatura com IPMI Exporter | [Visualizar](./14-ipmi-exporter-baremetal-telemetry/README.md) |
| `15-prometheus-operator-servicemonitor-crds` | Gestão Declarativa de Alvos no Kubernetes com ServiceMonitor e PodMonitor CRDs | [Visualizar](./15-prometheus-operator-servicemonitor-crds/README.md) |
| `16-kafka-jmx-exporter-broker-metrics` | Extração de Métricas Internas da JVM e Brokers Apache Kafka com JMX Exporter | [Visualizar](./16-kafka-jmx-exporter-broker-metrics/README.md) |
| `17-dynamic-sd-consul-prometheus` | Descoberta Dinâmica de Serviços em Ambientes Híbridos com Consul Service Discovery | [Visualizar](./17-dynamic-sd-consul-prometheus/README.md) |
| `18-sloth-automated-slo-generator-promql` | Geração Automatizada de Regras de SLO e Alertas Multi-Burn-Rate com Sloth | [Visualizar](./18-sloth-automated-slo-generator-promql/README.md) |
| `19-ebpf-network-latency-exporter` | Medição de Latência de Conexões TCP em Nível de Kernel com eBPF Exporter | [Visualizar](./19-ebpf-network-latency-exporter/README.md) |
| `20-prometheus-cost-attribution-kubecost` | Atribuição de Custos de Computação Baseada em Métricas do Prometheus e Kubecost | [Visualizar](./20-prometheus-cost-attribution-kubecost/README.md) |
