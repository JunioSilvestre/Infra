# Pipeline de Análise e Métricas de Resposta a Incidentes (MTTD, MTTR, MTBF)

## 1. Cenário de Produção Real
A diretoria de tecnologia precisava saber se a maturidade da equipe de operações estava realmente melhorando ao longo dos trimestres.

## 2. O Problema Real
Coletar dados de incidentes históricos, calcular métricas de MTTD (tempo de detecção) e MTTR (tempo de recuperação) e exibir tendências.

## 3. Arquitetura e Engenharia da Solução
Pipeline de dados consumindo APIs do PagerDuty e Jira, armazenando no PostgreSQL e gerando gráficos de evolução de confiabilidade.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** MTTR, MTTD, MTBF Metrics, Engineering Analytics, Continuous Improvement
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
python calculate_incident_metrics.py --quarter Q3-2026
```
