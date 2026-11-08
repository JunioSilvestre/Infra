# Aquecimento Prévio de Computação (Pre-Warming) para Picos Comerciais Conhecidos

## 1. Cenário de Produção Real
Auto Scaling reativo demorava 5 minutos para subir servidores, fazendo com que usuários enfrentassem lentidão no primeiro minuto de promoções.

## 2. O Problema Real
Escalar preventivamente a infraestrutura 15 minutos antes de horários comerciais conhecidos (como aberturas de mercado e campanhas de marketing).

## 3. Arquitetura e Engenharia da Solução
Agendamento cron no Kubernetes ou EventBridge aplicando profiles temporários de escala mínima em pools de nós e microsserviços.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Pre-Warming Autoscaling, Scheduled Scaling, Cloud FinOps, High Availability
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
aws autoscaling put-scheduled-update-group-action --auto-scaling-group-name prod-fleet --desired-capacity 50 --start-time '2026-11-06T09:00:00Z'
```
