# Monitor e Solicitador Autônomo de Aumento de Cotas e Limites de Nuvem

## 1. Cenário de Produção Real
Deploys falhavam repentinamente com erro 'VcpuLimitExceeded' porque a conta da AWS atingiu o limite padrão de instâncias da região.

## 2. O Problema Real
Monitorar o consumo de cotas de nuvem e disparar chamados automáticos de aumento antes que a conta atinja 85% do limite.

## 3. Arquitetura e Engenharia da Solução
Script consumindo a API de AWS Service Quotas, exportando métricas para o Prometheus e abrindo tickets de aumento via AWS Support API.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** AWS Service Quotas, Quota Monitoring, Capacity Governance, Cloud Automation
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
aws service-quotas list-service-quotas --service-code ec2
```
