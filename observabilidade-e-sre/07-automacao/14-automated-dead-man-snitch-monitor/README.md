# Monitoramento Inverso de Silêncio com Padrão Dead Man's Snitch

## 1. Cenário de Produção Real
Se todo o servidor de monitoramento Prometheus cair, nenhum alerta será emitido, deixando a empresa em um apagão silencioso.

## 2. O Problema Real
Configurar um alerta que dispara propositalmente a cada 1 minuto para um serviço externo; se o serviço parar de receber o ping, alerta a equipe.

## 3. Arquitetura e Engenharia da Solução
Configuração de regra de alerta `Watchdog` sempre ativa no Alertmanager integrada com o Dead Man's Snitch / Healthchecks.io.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Dead Man's Snitch, Monitoring the Monitor, Inverse Alerting, SRE Reliability
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
curl -m 10 --retry 3 https://nosnch.in/c2a4b6d8
```
