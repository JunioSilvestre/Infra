# Módulo: Rastreabilidade Distribuída e Instrumentação OpenTelemetry

APM distribuído com OpenTelemetry (OTel), Jaeger, Tempo, correlação de spans e profiling contínuo em produção.

Este módulo contém 20 projetos práticos de nível sênior baseados no dia a dia real de engenheiros de Site Reliability Engineering (SRE), Observabilidade e Plataforma operando em empresas de missão crítica nos estados de Nova York (NY), Massachusetts (MA) e Connecticut (CT).

## Índice de Projetos

| Diretório | Nome do Projeto | Documentação |
|:---|:---|:---:|
| `01-opentelemetry-collector-pipeline-tempo` | Arquitetura de Rastreabilidade Distribuída com OTel Collector e Grafana Tempo | [Visualizar](./01-opentelemetry-collector-pipeline-tempo/README.md) |
| `02-w3c-trace-context-propagation-mesh` | Propagação Padronizada de Contexto de Rastreamento com Cabeçalhos W3C | [Visualizar](./02-w3c-trace-context-propagation-mesh/README.md) |
| `03-tail-based-sampling-otel-collector` | Amostragem Baseada na Cauda (Tail-Based Sampling) para Redução de Custos | [Visualizar](./03-tail-based-sampling-otel-collector/README.md) |
| `04-jaeger-distributed-tracing-elasticsearch` | Implantação de Cluster Jaeger em Alta Disponibilidade com Backend Elasticsearch | [Visualizar](./04-jaeger-distributed-tracing-elasticsearch/README.md) |
| `05-trace-to-metrics-spanmetrics-processor` | Geração Automática de Métricas a Partir de Traces com Spanmetrics Processor | [Visualizar](./05-trace-to-metrics-spanmetrics-processor/README.md) |
| `06-trace-to-logs-correlation-loki-tempo` | Correlação Bidirecional Perfeita entre Spans do Tempo e Logs do Loki | [Visualizar](./06-trace-to-logs-correlation-loki-tempo/README.md) |
| `07-auto-instrumentation-kubernetes-operator` | Instrumentação Automática de Aplicações sem Alteração de Código com OTel Operator | [Visualizar](./07-auto-instrumentation-kubernetes-operator/README.md) |
| `08-database-query-sanitization-tracing` | Captura Segura de Consultas SQL e Mascaramento de Parâmetros em Spans | [Visualizar](./08-database-query-sanitization-tracing/README.md) |
| `09-continuous-profiling-pyroscope-ebpf` | Profiling Contínuo de CPU e Memória em Tempo de Execução com Grafana Pyroscope | [Visualizar](./09-continuous-profiling-pyroscope-ebpf/README.md) |
| `10-grpc-metadata-trace-interceptor` | Instrumentação de Microsserviços gRPC de Alta Performance com Interceptores OTel | [Visualizar](./10-grpc-metadata-trace-interceptor/README.md) |
| `11-opentelemetry-ebpf-instrumentation-beyla` | Auto-Instrumentação de Camada de Rede e HTTP em Nível de Kernel com Grafana Beyla | [Visualizar](./11-opentelemetry-ebpf-instrumentation-beyla/README.md) |
| `12-critical-path-latency-breakdown` | Análise Automática do Caminho Crítico de Latência em Grafos de Microsserviços | [Visualizar](./12-critical-path-latency-breakdown/README.md) |
| `13-datadog-apm-tracing-migration-otel` | Estratégia de Desacoplamento e Migração do Datadog APM para OpenTelemetry | [Visualizar](./13-datadog-apm-tracing-migration-otel/README.md) |
| `14-service-dependency-graph-generator` | Geração Automática do Mapa de Dependências de Serviços a Partir de Spans | [Visualizar](./14-service-dependency-graph-generator/README.md) |
| `15-trace-exemplars-prometheus-integration` | Integração de Exemplares de Trace em Gráficos de Métrica do Prometheus | [Visualizar](./15-trace-exemplars-prometheus-integration/README.md) |
| `16-baggage-api-distributed-tenant-propagation` | Propagação de Contexto de Negócio entre Microsserviços com OpenTelemetry Baggage | [Visualizar](./16-baggage-api-distributed-tenant-propagation/README.md) |
| `17-async-event-tracing-kafka-headers` | Rastreamento de Processamento Assíncrono Orientado a Eventos com Apache Kafka | [Visualizar](./17-async-event-tracing-kafka-headers/README.md) |
| `18-spiffe-spire-identity-tracing-correlation` | Correlação Criptográfica de Identidade de Microsserviços com SPIFFE e Tracing | [Visualizar](./18-spiffe-spire-identity-tracing-correlation/README.md) |
| `19-memory-leak-continuous-profiling-analysis` | Diagnóstico de Vazamento de Memória em Produção com Heap Profiling Contínuo | [Visualizar](./19-memory-leak-continuous-profiling-analysis/README.md) |
| `20-tracing-sampling-load-balancer-cluster` | Cluster de Coletores de Tracing com Balanceamento Inteligente por TraceID | [Visualizar](./20-tracing-sampling-load-balancer-cluster/README.md) |
