# 01 — Tratador de Notificação de Término de Instâncias EC2 Spot com Drenagem Graceful

## 🏢 Cenário de Negócios e Produção Real
Uso de instâncias EC2 Spot na AWS para redução de até 70% no custo de computação de workers assíncronos.

### ⚠️ O Problema Real
A AWS envia aviso de 2 minutos antes de desligar a instância spot; se não for tratada, tarefas em execução são interrompidas abruptamente.

## 🚀 Arquitetura e Engenharia em Bash
Polling local a cada 5 segundos no serviço de metadados da instância (IMDSv2 com token seguro via http://169.254.169.254/latest/meta-data/spot/instance-action), detecção do evento de término, envio de sinal SIGTERM para as filas, salvamento de estado e aviso para o balanceador.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`curl, jq, pkill, systemctl, logger`

## 📌 Exemplo de Execução CLI
```bash
./spot_handler.sh --drain-script /opt/worker/drain.sh --notify-slack
```
