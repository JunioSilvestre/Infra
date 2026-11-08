# 03 — Notificador em Tempo Real de Erros Críticos do Systemd com journalctl

## 🏢 Cenário de Negócios e Produção Real
Detecção imediata de falhas de hardware, pânicos de kernel e erros críticos de daemons em servidores Linux.

### ⚠️ O Problema Real
Logs críticos passam despercebidos até o servidor travar completamente.

## 🚀 Arquitetura e Engenharia em Bash
Acompanhamento contínuo via 'journalctl -f -p err..emerg -o json', parsing das mensagens em tempo real com jq/awk, agrupamento de mensagens duplicadas (throttling) e envio imediato para canal de alertas.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`journalctl, jq, awk, curl`

## 📌 Exemplo de Execução CLI
```bash
./journal_alerter.sh --priority err --webhook '$SLACK_WEBHOOK' --throttle-sec 60
```
