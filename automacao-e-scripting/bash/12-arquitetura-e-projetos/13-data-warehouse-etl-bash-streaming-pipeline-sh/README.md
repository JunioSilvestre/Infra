# 13 — Pipeline de ETL de Alta Velocidade em Streaming com Bash, awk e psql/DuckDB

## 🏢 Cenário de Negócios e Produção Real
Ingestão diária de gigabytes de dados brutos de telemetria e transações para Data Warehouses sem necessidade de clusters pesados de Spark.

### ⚠️ O Problema Real
Processamentos tradicionais em Python ou Java demoram horas e consomem dezenas de gigabytes de memória.

## 🚀 Arquitetura e Engenharia em Bash
Pipeline em stream utilizando descompressão sob demanda (zcat/pigz), filtragem e transformação em alta velocidade com awk, conversão para formato colunar Parquet ou carregamento direto no banco via comando COPY de alta performance sem gravar intermediários em disco.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`pigz, awk, psql, duckdb, mkfifo`

## 📌 Exemplo de Execução CLI
```bash
./etl_stream.sh --source /data/raw/*.gz --target-table fact_transactions
```
