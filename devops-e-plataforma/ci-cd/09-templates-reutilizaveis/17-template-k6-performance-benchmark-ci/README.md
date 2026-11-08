# 17 — Template Reutilizável de Testes de Carga e Performance com k6 e InfluxDB

## 🏢 Cenário de Produção e Vida Real
Homologação de performance contínua para qualquer API antes da aprovação de Pull Requests.

### ⚠️ O Problema Real
Ausência de testes de estresse automatizados até a aplicação sofrer gargalo em produção.

## 🚀 Arquitetura e Engenharia de CI/CD
Workflow configurado para rodar cenários k6 parametrizados via inputs, comparando os resultados contra SLAs definidos e exportando métricas para painéis Grafana.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`k6, influxdb, grafana`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
k6 run -o influxdb=http://influx:8086/k6 tests/perf.js
```
