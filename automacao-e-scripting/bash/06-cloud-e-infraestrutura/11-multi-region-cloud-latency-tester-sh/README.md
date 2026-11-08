# 11 — Benchmark e Testador de Latência Inter-Regiões entre Provedores de Nuvem (Multi-Cloud)

## 🏢 Cenário de Negócios e Produção Real
Arquiteturas multi-cloud distribuídas entre AWS, GCP e Azure avaliando custos de egress e latência de rede.

### ⚠️ O Problema Real
Escolher regiões de nuvem geograficamente distantes introduz latências inaceitáveis nas chamadas de microsserviços.

## 🚀 Arquitetura e Engenharia em Bash
Disparo simultâneo de testes de ping e requisições HTTP contra endpoints de referência em todas as principais regiões (Virgínia, São Paulo, Frankfurt, Tóquio), cálculo de jitter e geração de matriz comparativa de latência em CSV/Markdown.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`curl, ping, awk, column, sort`

## 📌 Exemplo de Execução CLI
```bash
./cloud_latency_matrix.sh --providers 'aws,gcp,azure' --output /reports/cloud_latency.md
```
