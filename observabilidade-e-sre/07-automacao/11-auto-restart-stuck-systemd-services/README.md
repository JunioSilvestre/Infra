# Watchdog Autônomo de Serviços de Sistema com Systemd e Heartbeats

## 1. Cenário de Produção Real
Daemons de monitoramento e agentes de log sofriam congelamentos silenciosos (deadlocks), parando de coletar dados sem avisar.

## 2. O Problema Real
Fazer com que o próprio sistema operacional reinicie o serviço se ele parar de enviar heartbeats periódicos de vida.

## 3. Arquitetura e Engenharia da Solução
Configuração da diretiva `WatchdogSec=30` no arquivo `.service` do systemd com aplicação enviando notificações via `sd_notify`.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** systemd Watchdog, sd_notify, Linux Process Self-Healing, High Availability
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
systemctl show --property=WatchdogUSec datadog-agent
```
