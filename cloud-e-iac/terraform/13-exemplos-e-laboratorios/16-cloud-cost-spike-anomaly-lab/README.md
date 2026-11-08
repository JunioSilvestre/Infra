# Laboratório de Detecção e Resposta a Picos Anômalos de Custos em Nuvem

## 1. Cenário de Produção Real
Uma instância computacional de tamanho inadequado ou loop de requisições começa a consumir milhares de dólares por hora.

## 2. O Problema Real
Validar se os alertas de anomalia de custo e orçamentos disparam notificações imediatas para a equipe de SRE.

## 3. Arquitetura e Engenharia da Solução
Provisionamento temporário de recursos de alta capacidade simulando um pico de custo, validação de alertas e expurgo imediato.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Cloud FinOps Drills, AWS Cost Anomaly Detection, Budget Alerts, Incident Response
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
aws ce get-anomalies --date-interval Start=2026-10-01,End=2026-11-01
```
