# Módulo: Engenharia de Dados e Pipelines de ETL/ELT com Python

Projetos em Python com Polars, DuckDB, PyArrow, streaming assíncrono, validação de schemas, Parquet e bancos analíticos de alta vazão.

Este módulo contém 20 projetos práticos de nível sênior baseados na vida real corporativa (SRE, Platform Engineering, DevOps e Infraestrutura em Nuvem).

## Índice de Projetos

| Diretório | Nome do Projeto | Documentação |
|:---|:---|:---:|
| `01-parquet-lakehouse-partition-pipeline` | Pipeline de Ingestão e Compactação de Arquivos Parquet para Data Lakehouse | [Visualizar](./01-parquet-lakehouse-partition-pipeline/README.md) |
| `02-duckdb-local-olap-sql-engine` | Motor Analítico Local OLAP de Alta Performance com DuckDB e MotherDuck | [Visualizar](./02-duckdb-local-olap-sql-engine/README.md) |
| `03-kafka-streaming-consumer-producer-pipeline` | Consumidor e Produtor de Streaming em Tempo Real com Confluent-Kafka e Avro | [Visualizar](./03-kafka-streaming-consumer-producer-pipeline/README.md) |
| `04-data-quality-great-expectations-gate` | Portão de Qualidade e Integridade de Dados Automatizado com Great Expectations | [Visualizar](./04-data-quality-great-expectations-gate/README.md) |
| `05-cdc-change-data-capture-streamer` | Streaming de Captura de Mudanças de Dados (CDC) do PostgreSQL via Logical Decoding | [Visualizar](./05-cdc-change-data-capture-streamer/README.md) |
| `06-delta-lake-acid-transactions-python` | Manipulação de Tabelas Delta Lake com Suporte a Transações ACID e Time Travel | [Visualizar](./06-delta-lake-acid-transactions-python/README.md) |
| `07-pydantic-data-contract-validator` | Enforcer e Validador de Contratos de Dados (Data Contracts) entre Produtores e Consumidores | [Visualizar](./07-pydantic-data-contract-validator/README.md) |
| `08-clickhouse-bulk-stream-uploader` | Carregador em Lote de Alta Vazão para ClickHouse com Buffers em Memória | [Visualizar](./08-clickhouse-bulk-stream-uploader/README.md) |
| `09-large-json-ndjson-streaming-parser` | Parser de Streaming de Arquivos Gigantes NDJSON / JSON Lines sem Sobrecarga de RAM | [Visualizar](./09-large-json-ndjson-streaming-parser/README.md) |
| `10-redis-timeseries-aggregation-pipeline` | Pipeline de Agregação de Métricas de Séries Temporais com Redis TimeSeries | [Visualizar](./10-redis-timeseries-aggregation-pipeline/README.md) |
| `11-snowflake-connector-batch-loader` | Carregador e Orquestrador de Dados para Snowflake com Autenticação de Chave Privada | [Visualizar](./11-snowflake-connector-batch-loader/README.md) |
| `12-iceberg-lakehouse-rest-catalog-sync` | Integração e Gestão de Tabelas Apache Iceberg via PyIceberg e REST Catalog | [Visualizar](./12-iceberg-lakehouse-rest-catalog-sync/README.md) |
| `13-elasticsearch-bulk-indexer-helper` | Indexador em Lote Resiliente para Elasticsearch e OpenSearch com Backoff | [Visualizar](./13-elasticsearch-bulk-indexer-helper/README.md) |
| `14-data-profiling-ydata-profiling-report` | Gerador Automatizado de Relatórios Estatísticos de Dados com ydata-profiling | [Visualizar](./14-data-profiling-ydata-profiling-report/README.md) |
| `15-anonymization-faker-synthetic-data-engine` | Motor de Geração de Massa de Dados Realistas e Sintéticas para Ambientes de Teste | [Visualizar](./15-anonymization-faker-synthetic-data-engine/README.md) |
| `16-dbt-core-programmatic-run-orchestrator` | Orquestrador Programático de Execuções e Testes dbt-core em Python | [Visualizar](./16-dbt-core-programmatic-run-orchestrator/README.md) |
| `17-minio-s3-multipart-upload-accelerator` | Acelerador Paralelo de Upload Multipart para MinIO e S3 com Hash SHA-256 | [Visualizar](./17-minio-s3-multipart-upload-accelerator/README.md) |
| `18-data-lineage-openlineage-marquez-tracker` | Rastreador de Linhagem de Dados (Data Lineage) com OpenLineage e Marquez | [Visualizar](./18-data-lineage-openlineage-marquez-tracker/README.md) |
| `19-sqlite-wal-high-concurrency-embedded-db` | Gerenciador de Alta Concorrência para SQLite com Modo WAL e Cache Otimizado | [Visualizar](./19-sqlite-wal-high-concurrency-embedded-db/README.md) |
| `20-csv-to-sqlite-instant-data-analyst` | CLI de Conversão Ultrarrápida de CSVs para Bancos SQLite com Tipagem Automática | [Visualizar](./20-csv-to-sqlite-instant-data-analyst/README.md) |
