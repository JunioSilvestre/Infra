# Remediação Autônoma de Instâncias com Falha em Application Load Balancers

## 1. Cenário de Produção Real
Instâncias EC2 que passavam a responder com erro HTTP 500 continuavam ligadas consumindo recursos desnecessários no balanceador.

## 2. O Problema Real
Detectar nós marcados como 'Unhealthy' pelo ALB por mais de 5 minutos e disparar terminação e substituição atômica da máquina.

## 3. Arquitetura e Engenharia da Solução
Regra do CloudWatch Events monitorando métricas de `UnHealthyHostCount` disparando função Lambda que executa `terminate-instance-in-auto-scaling-group`.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** AWS ALB Health Checks, Auto Scaling Group Self-Healing, CloudWatch Alarms
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
aws elbv2 describe-target-health --target-group-arn <TG_ARN>
```
