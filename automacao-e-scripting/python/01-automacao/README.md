# Módulo: Automação Operacional e Engenharia de Scripts em Python

Projetos em Python para automação de infraestrutura, manipulação massiva de arquivos, pipelines assíncronos e orquestração de tarefas de sistema.

Este módulo contém 20 projetos práticos de nível sênior baseados na vida real corporativa (SRE, Platform Engineering, DevOps e Infraestrutura em Nuvem).

## Índice de Projetos

| Diretório | Nome do Projeto | Documentação |
|:---|:---|:---:|
| `01-async-file-watcher-s3-uploader` | Watcher Assíncrono de Sistema de Arquivos com Upload Otimizado para AWS S3 | [Visualizar](./01-async-file-watcher-s3-uploader/README.md) |
| `02-automated-ssl-cert-renewal-notifier` | Auditor de Validade de Certificados TLS com Alertas via Telegram/Slack | [Visualizar](./02-automated-ssl-cert-renewal-notifier/README.md) |
| `03-log-sanitizer-anonymizer-pipeline` | Higienizador e Anonimizador de Dados Pessoais (LGPD/GDPR) em Logs de Alta Vazão | [Visualizar](./03-log-sanitizer-anonymizer-pipeline/README.md) |
| `04-sftp-sync-resilient-retry-manager` | Sincronizador Resiliente de Arquivos SFTP com Paramiko e Backoff Exponencial | [Visualizar](./04-sftp-sync-resilient-retry-manager/README.md) |
| `05-system-resources-influxdb-telemetry` | Coletor Leve de Telemetria de CPU, RAM e Disco com Envio Direto ao InfluxDB | [Visualizar](./05-system-resources-influxdb-telemetry/README.md) |
| `06-database-partition-purger-postgres` | Expurgador e Gerenciador Automatizado de Partições de Tabelas no PostgreSQL | [Visualizar](./06-database-partition-purger-postgres/README.md) |
| `07-dynamic-pdf-report-generator-weasyprint` | Gerador Automatizado de Dossiês e Relatórios Financeiros em PDF com WeasyPrint | [Visualizar](./07-dynamic-pdf-report-generator-weasyprint/README.md) |
| `08-celery-distributed-task-worker-fleet` | Orquestrador de Fila Distribuída de Processamento em Lote com Celery e Redis | [Visualizar](./08-celery-distributed-task-worker-fleet/README.md) |
| `09-api-rate-limit-proxy-token-bucket` | Proxy Reverso com Rate Limiting Baseado em Algoritmo Token Bucket em Python | [Visualizar](./09-api-rate-limit-proxy-token-bucket/README.md) |
| `10-multi-server-ssh-automation-fabric` | Automação e Execução Concorrente de Comandos em Frotas Linux com Fabric | [Visualizar](./10-multi-server-ssh-automation-fabric/README.md) |
| `11-automated-database-backup-validator` | Orquestrador de Backups com Restauração de Teste em Container Temporário | [Visualizar](./11-automated-database-backup-validator/README.md) |
| `12-webhook-dispatcher-event-bridge` | Despachante Confiável de Webhooks com Fila Persistente e Retentativas | [Visualizar](./12-webhook-dispatcher-event-bridge/README.md) |
| `13-yaml-json-config-schema-validator` | Validador e Linter de Configurações Complexas YAML/JSON com Pydantic v2 | [Visualizar](./13-yaml-json-config-schema-validator/README.md) |
| `14-prometheus-custom-exporter-system` | Exportador Prometheus Personalizado para Métricas de Filas e Processos Internos | [Visualizar](./14-prometheus-custom-exporter-system/README.md) |
| `15-file-deduplication-sha256-tree` | Deduplicador Massivo de Arquivos com Hash SHA-256 em Árvores de Diretórios | [Visualizar](./15-file-deduplication-sha256-tree/README.md) |
| `16-dynamic-dns-updater-multi-provider` | Atualizador de DNS Dinâmico com Suporte Multi-Provedor (Cloudflare, Route53) | [Visualizar](./16-dynamic-dns-updater-multi-provider/README.md) |
| `17-automated-incident-pager-call-service` | Discador e Notificador de Incidentes Críticos de Infraestrutura via Twilio API | [Visualizar](./17-automated-incident-pager-call-service/README.md) |
| `18-dns-zone-file-serial-auto-increment` | Manipulador e Validador de Zonas DNS Bind9 com Incremento Automático de Serial | [Visualizar](./18-dns-zone-file-serial-auto-increment/README.md) |
| `19-large-csv-streaming-memory-optimizer` | Pipeline de Streaming e Transformação de CSVs Gigantes (>20GB) sem Estourar RAM | [Visualizar](./19-large-csv-streaming-memory-optimizer/README.md) |
| `20-disaster-recovery-state-machine-runner` | Máquina de Estados Finita para Execução de Planos de Disaster Recovery | [Visualizar](./20-disaster-recovery-state-machine-runner/README.md) |
