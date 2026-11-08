# Monitoramento e Auto-Recuperação de Datacenters de Borda 5G em Connecticut

## 1. Cenário de Produção Real
Operadora de telecomunicações operando mais de 100 micro-datacenters em torres celulares com conexões de rede intermitentes.

## 2. O Problema Real
Prover monitoramento autônomo local capaz de reiniciar serviços e executar rotinas de auto-recuperação sem depender da matriz.

## 3. Arquitetura e Engenharia da Solução
Stack ultraleve com VictoriaMetrics Single, K3s, systemd watchdogs e agentes de telemetria operando em modo offline-first com sync posterior.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** VictoriaMetrics, K3s, systemd Watchdog, Edge SRE, 5G Telecommunications
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
systemctl status edge-watchdog.service
```
