# 15 — Auto-Cura e Limpeza de Unidades em Estado Failed no Systemd

## 🏢 Cenário de Negócios e Produção Real
Ambientes de produção com múltiplos nós onde serviços secundários entram em estado failed e acumulam ruído.

### ⚠️ O Problema Real
Unidades em estado failed poluem os painéis de monitoramento e impedem reinicializações limpas.

## 🚀 Arquitetura e Engenharia em Bash
Listagem de unidades em falha via 'systemctl --failed --no-legend', análise de motivo de falha, tentativa de reset do estado com 'systemctl reset-failed', reinicialização do daemon correspondente e log consolidado de ações.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`systemctl, awk, logger`

## 📌 Exemplo de Execução CLI
```bash
./heal_systemd.sh --auto-reset --notify
```
