# 01 — Coletor Customizado de Métricas de Negócio e Sistema para Prometheus Node Exporter

## 🏢 Cenário de Negócios e Produção Real
Exposição de métricas do sistema operacional que o Node Exporter padrão não coleta nativamente.

### ⚠️ O Problema Real
Ferramentas pesadas de monitoramento consomem CPU demais apenas para expor algumas métricas customizadas.

## 🚀 Arquitetura e Engenharia em Bash
Script em Bash puro executado via cron/timer que extrai contagens de filas locais, status de backups e integridade de certificados, grava os dados em formato OpenMetrics/Prometheus no diretório .prom (/var/lib/node_exporter/textfile_collector/) de forma atômica.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`awk, sed, date, mv`

## 📌 Exemplo de Execução CLI
```bash
./node_exporter_custom.sh --output-dir /var/lib/node_exporter/textfile_collector
```
