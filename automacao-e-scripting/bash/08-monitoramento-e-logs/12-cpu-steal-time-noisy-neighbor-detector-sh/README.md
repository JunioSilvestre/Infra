# 12 — Detector de CPU Steal Time e Efeito 'Noisy Neighbor' em Máquinas Virtuais Cloud

## 🏢 Cenário de Negócios e Produção Real
Instâncias virtuais em nuvem (AWS EC2, GCP, Azure) sofrendo lentidão severa sem causa aparente interna.

### ⚠️ O Problema Real
Outras VMs no mesmo host físico hipervisor consomem toda a CPU, 'roubando' ciclos da sua instância (Steal Time elevado).

## 🚀 Arquitetura e Engenharia em Bash
Amostragem periódica de métricas de CPU via /proc/stat e mpstat, isolamento da coluna %steal, cálculo de média móvel e alerta para migrar a instância caso o steal time permaneça acima de 15% por mais de 10 minutos.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`mpstat, /proc/stat, awk, date`

## 📌 Exemplo de Execução CLI
```bash
./steal_detector.sh --threshold-pct 15 --duration-min 10
```
