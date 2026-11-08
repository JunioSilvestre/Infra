# 11 — Aquecimento Prévio de Caches (Cache Warming) Pós-Deploy antes da Liberação de Tráfego

## 🏢 Cenário de Produção e Vida Real
Aplicações de alto throughput que dependem de dados em cache no Redis/Memcached para não sobrecarregar o banco de dados relacional.

### ⚠️ O Problema Real
Subir instâncias novas com cache vazio gera o efeito 'Cache Stampede', derrubando o banco de dados instantaneamente.

## 🚀 Arquitetura e Engenharia de CI/CD
Script de aquecimento acionado pós-deploy que executa queries parametrizadas para popular os caches críticos no Redis antes de registrar a instância no balanceador de carga.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`redis-cli, curl, jq, bash`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
./warmup_cache.sh --redis-host 10.0.1.20 --endpoint 'http://127.0.0.1:8080/internal/warmup'
```
