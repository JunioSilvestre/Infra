# 12 — Avaliação de Performance de Novas Rotas com Dark Launching

## 🏢 Cenário de Produção e Vida Real
Lançamento de nova versão de algoritmo pesado de precificação sem que a resposta seja exibida ao usuário final.

### ⚠️ O Problema Real
Não saber se o novo algoritmo aguenta a concorrência e o volume de dados da produção.

## 🚀 Arquitetura e Engenharia de CI/CD
A aplicação atual chama o novo endpoint de forma assíncrona em background ('dark launch'), compara tempos de resposta e valida resultados sem interferir na experiência do usuário.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`curl, k6, datadog-api`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
./eval_dark_launch.sh --metric latency_p95 --max-ms 150
```
