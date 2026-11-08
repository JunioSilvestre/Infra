# 13 — Manipulador e Calculador de Datas ISO-8601 e Época Unix

## 🏢 Cenário de Negócios e Produção Real
Comparação de carimbos de data/hora provenientes de diferentes fontes (logs, APIs REST, certificados).

### ⚠️ O Problema Real
Diferenças de fusos horários (UTC vs Local) causam cálculos incorretos de idade de arquivos e expirações.

## 🚀 Arquitetura e Engenharia em Bash
Funções de conversão bidirecional entre timestamps ISO-8601 UTC (YYYY-MM-DDTHH:MM:SSZ) e segundos desde o Unix Epoch (%s), cálculo de diferença em minutos/horas/dias e formatação amigável de durações.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`date, awk`

## 📌 Exemplo de Execução CLI
```bash
source lib/time.sh && age_hours=$(time_diff_hours '2026-11-01T10:00:00Z' 'now')
```
