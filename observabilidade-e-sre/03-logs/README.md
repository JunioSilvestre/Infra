# Módulo: Centralização de Logs, Indexação e Pipelines de Auditoria

Arquiteturas com Grafana Loki, Fluentbit, Elastic/OpenSearch, sanitização LGPD/GDPR e agregação em escala de terabytes.

Este módulo contém 20 projetos práticos de nível sênior baseados no dia a dia real de engenheiros de Site Reliability Engineering (SRE), Observabilidade e Plataforma operando em empresas de missão crítica nos estados de Nova York (NY), Massachusetts (MA) e Connecticut (CT).

## Índice de Projetos

| Diretório | Nome do Projeto | Documentação |
|:---|:---|:---:|
| `01-loki-microservices-log-aggregation-s3` | Arquitetura de Centralização de Logs com Grafana Loki em Modo Simple Scalable | [Visualizar](./01-loki-microservices-log-aggregation-s3/README.md) |
| `02-fluent-bit-kubernetes-log-enrichment` | Coleta e Enriquecimento de Logs em Kubernetes com Fluent Bit DaemonSet | [Visualizar](./02-fluent-bit-kubernetes-log-enrichment/README.md) |
| `03-log-sanitization-pii-masking-pipeline` | Higienização e Mascaramento em Tempo Real de CPFs, Cartões e PII em Logs | [Visualizar](./03-log-sanitization-pii-masking-pipeline/README.md) |
| `04-opensearch-cold-storage-tiering` | Arquitetura de Armazenamento em Camadas no OpenSearch com UltraWarm e Cold | [Visualizar](./04-opensearch-cold-storage-tiering/README.md) |
| `05-vector-high-throughput-log-routing` | Roteamento e Transformação de Logs de Altíssima Vazão com Vector em Rust | [Visualizar](./05-vector-high-throughput-log-routing/README.md) |
| `06-logql-metric-extraction-rules` | Transformação de Logs em Métricas Numéricas com LogQL no Grafana Loki | [Visualizar](./06-logql-metric-extraction-rules/README.md) |
| `07-structured-json-logging-standard` | Padronização Corporativa de Logs Estruturados em JSON para 200 Microsserviços | [Visualizar](./07-structured-json-logging-standard/README.md) |
| `08-graylog-enterprise-syslog-concentrator` | Concentrador Central de Syslog com Graylog e Autenticação de Auditoria | [Visualizar](./08-graylog-enterprise-syslog-concentrator/README.md) |
| `09-kafka-buffered-log-ingestion-pipeline` | Fila de Amortecimento de Logs com Apache Kafka contra Picos de Tráfego | [Visualizar](./09-kafka-buffered-log-ingestion-pipeline/README.md) |
| `10-cloudwatch-log-subscription-filters` | Streaming de Logs do AWS CloudWatch para OpenSearch com Lambda e Kinesis | [Visualizar](./10-cloudwatch-log-subscription-filters/README.md) |
| `11-auditd-linux-kernel-security-logging` | Coleta e Monitoramento de Chamadas de Kernel com Linux Auditd em Produção | [Visualizar](./11-auditd-linux-kernel-security-logging/README.md) |
| `12-loki-rate-limiting-and-tenant-limits` | Governança e Rate Limiting de Ingestão de Logs no Grafana Loki | [Visualizar](./12-loki-rate-limiting-and-tenant-limits/README.md) |
| `13-elasticsearch-ilm-lifecycle-management` | Automação do Ciclo de Vida de Índices com Elasticsearch ILM | [Visualizar](./13-elasticsearch-ilm-lifecycle-management/README.md) |
| `14-gelf-logging-protocol-docker-daemon` | Padronização de Logging de Daemons de Sistema com Graylog Extended Log Format | [Visualizar](./14-gelf-logging-protocol-docker-daemon/README.md) |
| `15-regex-multiline-log-parsing-java-python` | Tratamento Avançado de Logs Multilinha e Stacktraces com Fluent Bit | [Visualizar](./15-regex-multiline-log-parsing-java-python/README.md) |
| `16-immutable-audit-log-s3-object-lock` | Arquivo Imutável de Logs Regulatórios com AWS S3 Object Lock (WORM) | [Visualizar](./16-immutable-audit-log-s3-object-lock/README.md) |
| `17-datadog-log-rehydration-pipeline` | Pipeline de Re-hidratação de Logs Arquivados para Análise Forense de Incidentes | [Visualizar](./17-datadog-log-rehydration-pipeline/README.md) |
| `18-opensearch-anomaly-detection-logs` | Detecção Inteligente de Anomalias em Fluxos de Log com Machine Learning | [Visualizar](./18-opensearch-anomaly-detection-logs/README.md) |
| `19-fluentd-enterprise-backpressure-tuning` | Controle de Contrapressão e Buffer de Memória em Agentes de Log Fluentd | [Visualizar](./19-fluentd-enterprise-backpressure-tuning/README.md) |
| `20-log-deduplication-and-noise-filtering` | Deduplicação Inteligente de Mensagens e Supressão de Ruído de Logs em Produção | [Visualizar](./20-log-deduplication-and-noise-filtering/README.md) |
