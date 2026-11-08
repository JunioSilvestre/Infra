# 06 — Detector de Vazamento de Memória (Memory Leak) com Rastreamento de Crescimento de RSS

## 🏢 Cenário de Negócios e Produção Real
Serviços em Node.js, Python ou Go que consomem memória progressivamente ao longo de dias até serem mortos pelo sistema.

### ⚠️ O Problema Real
Reiniciar o servidor às cegas mascara o vazamento sem diagnosticar qual processo é o culpado.

## 🚀 Arquitetura e Engenharia em Bash
Amostragem horária do Resident Set Size (RSS) de todos os processos monitorados via /proc/[pid]/statm e ps, cálculo da taxa de crescimento da memória ao longo de 24h e disparo de alerta com dump de heap antes do colapso.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`ps, awk, /proc, date, bc`

## 📌 Exemplo de Execução CLI
```bash
./memory_leak_detector.sh --service my-app --sampling-interval 3600 --growth-limit-pct 20
```
