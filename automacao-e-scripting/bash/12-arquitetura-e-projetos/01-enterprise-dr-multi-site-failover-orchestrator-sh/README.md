# 01 — Orquestrador de Disaster Recovery Multi-Site com Comutação Atômica de Tráfego

## 🏢 Cenário de Negócios e Produção Real
Comutação emergencial completa de um data center primário em Manhattan para o site de contingência em Nova Jersey.

### ⚠️ O Problema Real
Comutar dezenas de bancos, rotas de rede e instâncias manualmente durante um desastre leva horas e gera inconsistências graves.

## 🚀 Arquitetura e Engenharia em Bash
Orquestrador em Bash puro com estados determinísticos (CHECK -> FREEZE -> SYNC -> PROMOTE -> ROUTE -> VERIFY), promoção de bancos standby para primary, ajuste de zonas DNS e rotas BGP, validação de integridade e trava contra split-brain.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`ssh, psql, aws, dig, logger, date`

## 📌 Exemplo de Execução CLI
```bash
./dr_orchestrator.sh --primary nyc-dc --standby nj-dc --action failover --confirm
```
