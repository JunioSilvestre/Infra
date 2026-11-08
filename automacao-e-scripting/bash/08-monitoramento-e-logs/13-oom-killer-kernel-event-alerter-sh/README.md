# 13 — Coletor e Alerta Instantâneo de Eventos de OOM-Killer no Kernel

## 🏢 Cenário de Negócios e Produção Real
Aplicações que desaparecem repentinamente da máquina sem deixar logs no arquivo de aplicação.

### ⚠️ O Problema Real
O kernel Linux mata o processo por falta de memória (Out-Of-Memory) e a equipe não sabe por que o serviço caiu.

## 🚀 Arquitetura e Engenharia em Bash
Varredura do dmesg e journalctl buscando padrões 'Out of memory: Kill process', extração do nome do processo morto, PID, pontuação de oom_score e consumo de páginas, com notificação imediata para a equipe de SRE.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`dmesg, journalctl, grep, awk, curl`

## 📌 Exemplo de Execução CLI
```bash
./oom_alerter.sh --since '5m ago' --alert-webhook '$SLACK_URL'
```
