# 16 — Escritor de Métricas OpenMetrics / Prometheus Textfile em Bash

## 🏢 Cenário de Negócios e Produção Real
Exportação de métricas customizadas de scripts para coleta periódica pelo Prometheus Node Exporter.

### ⚠️ O Problema Real
Escrever arquivos de métrica diretamente sem atomicidade faz o Prometheus ler o arquivo pela metade.

## 🚀 Arquitetura e Engenharia em Bash
Funções 'prom_gauge', 'prom_counter' que formatam métricas com labels e comentários HELP/TYPE, gravando primeiro em arquivo temporário (.tmp) no mesmo sistema de arquivos e movendo atomicamente com 'mv'.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`printf, mv, date`

## 📌 Exemplo de Execução CLI
```bash
source lib/prom.sh && prom_gauge 'backup_duration_seconds' '142' '{"target":"db"}'
```
