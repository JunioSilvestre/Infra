# Gerenciador Autônomo de Perfis de Escala para Eventos Sazonais Recorrentes

## 1. Cenário de Produção Real
Empresas de mídia sofriam com picos de tráfego previsíveis todos os dias às 20h durante a transmissão do telejornal de maior audiência.

## 2. O Problema Real
Ajustar a capacidade da infraestrutura dinamicamente seguindo uma curva preditiva de escala baseada no histórico de audiência.

## 3. Arquitetura e Engenharia da Solução
Operador em Python gerenciando limites de `minReplicas` no HPA do Kubernetes de acordo com uma tabela de horários e eventos cadastrados.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Predictive Scaling, Cron-based HPA Tuning, Cloud FinOps, Traffic Forecasting
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
python manage_scheduled_scaling.py --profile prime-time
```
