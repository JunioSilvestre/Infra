# Auditor Contínuo de Latência e Integridade de Replicação entre Regiões

## 1. Cenário de Produção Real
A empresa presumia que a réplica na região secundária estava sincronizada, mas uma falha silenciosa deixou os dados defasados em 4 horas.

## 2. O Problema Real
Medir a latência real de replicação (Replication Lag) a cada 1 minuto e alertar a equipe de SRE caso o RPO ultrapasse 30 segundos.

## 3. Arquitetura e Engenharia da Solução
Script de telemetria inserindo registros de timestamp contínuos no banco primário e medindo o atraso de chegada na réplica secundária.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Replication Lag Monitoring, RPO Verification, Disaster Recovery Assurance
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
python verify_replication_lag.py --primary-url <P_URL> --replica-url <R_URL>
```
