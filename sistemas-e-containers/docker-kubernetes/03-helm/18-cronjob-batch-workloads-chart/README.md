# Padronização de Cargas de Trabalho em Lote e Rotinas Agendadas com CronJobs

## 1. Cenário de Produção Real
Diferentes times criavam CronJobs com políticas inadequadas de concorrência (`concurrencyPolicy`), gerando sobreposição de execuções.

## 2. O Problema Real
Criar um padrão corporativo em Helm para CronJobs com controle rigoroso de histórico de jobs, tolerância a falhas e alertas de falha.

## 3. Arquitetura e Engenharia da Solução
Template de CronJob no chart com `concurrencyPolicy: Forbid`, `failedJobsHistoryLimit: 3` e injeção automática de sidecar de dead man's snitch.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Kubernetes CronJobs, Helm Packaging, Batch Processing, Health Monitoring
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
helm template . --set cronjob.schedule='0 2 * * *' | grep -A 5 'concurrencyPolicy'
```
