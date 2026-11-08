# 20 — Profiler de Tempo de Execução e Consumo de Minutos de Runners no GitLab CI

## 🏢 Cenário de Produção e Vida Real
Otimização de custos de computação e identificação de pipelines com tempo de execução excessivo.

### ⚠️ O Problema Real
Runners sobrecarregados sem que a gerência saiba quais repositórios são os maiores ofensores de consumo.

## 🚀 Arquitetura e Engenharia de CI/CD
Coleta via API REST do GitLab (/api/v4/projects/:id/pipelines) calculando duração média, percentil p95 por estágio e emissão de ranking dos 10 jobs mais lentos da empresa.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`curl, jq, awk, column`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
./gitlab_ci_profiler.sh --group my-corp --days 30 --report /tmp/ci_metrics.md
```
