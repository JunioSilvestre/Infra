# Módulo: Arquitetura de Sistemas, SRE e Engenharia de Resiliência com Python

Projetos em Python de arquitetura corporativa: orquestradores autônomos de SRE, medição de SLO/Error Budgets, Chaos Engineering e Disaster Recovery.

Este módulo contém 20 projetos práticos de nível sênior baseados na vida real corporativa (SRE, Platform Engineering, DevOps e Infraestrutura em Nuvem).

## Índice de Projetos

| Diretório | Nome do Projeto | Documentação |
|:---|:---|:---:|
| `01-slo-sli-error-budget-burn-rate-alert` | Calculador de Taxa de Queima (Burn Rate) de Error Budget e Alertas de SLO | [Visualizar](./01-slo-sli-error-budget-burn-rate-alert/README.md) |
| `02-circuit-breaker-pybreaker-resilience` | Implementação do Padrão Circuit Breaker com pybreaker e Armazenamento Redis | [Visualizar](./02-circuit-breaker-pybreaker-resilience/README.md) |
| `03-chaos-monkey-pod-killer-kubernetes` | Injetor de Caos Controlado (Chaos Monkey) para Pods do Kubernetes em Python | [Visualizar](./03-chaos-monkey-pod-killer-kubernetes/README.md) |
| `04-distributed-rate-limiter-redis-cell` | Rate Limiter Distribuído de Alto Throughput com Algoritmo GCRA no Redis | [Visualizar](./04-distributed-rate-limiter-redis-cell/README.md) |
| `05-idempotency-key-deduplication-filter` | Filtro de Idempotência com Chaves de Transação e TTL em Cache Distribuído | [Visualizar](./05-idempotency-key-deduplication-filter/README.md) |
| `06-saga-pattern-distributed-transaction-runner` | Orquestrador de Transações Distribuídas com o Padrão Saga e Compensações | [Visualizar](./06-saga-pattern-distributed-transaction-runner/README.md) |
| `07-dead-letter-queue-redrive-automator` | Orquestrador de Re-processamento Controlado de Mensagens em Dead Letter Queues | [Visualizar](./07-dead-letter-queue-redrive-automator/README.md) |
| `08-leader-election-etcd-consul-mesh` | Mecanismo de Eleição de Líder Distribuído com etcd e Locks de Sessão | [Visualizar](./08-leader-election-etcd-consul-mesh/README.md) |
| `09-multi-datacenter-health-evaluator-engine` | Avaliador de Saúde Global e Comutador de Tráfego entre Data Centers (GSLB) | [Visualizar](./09-multi-datacenter-health-evaluator-engine/README.md) |
| `10-outbox-pattern-reliable-event-publisher` | Implementação Confiável do Padrão Transactional Outbox para Mensageria | [Visualizar](./10-outbox-pattern-reliable-event-publisher/README.md) |
| `11-bulkhead-concurrency-isolation-pattern` | Implementação do Padrão Bulkhead para Isolamento de Pools de Conexão | [Visualizar](./11-bulkhead-concurrency-isolation-pattern/README.md) |
| `12-automated-canary-analysis-kayenta-alternative` | Motor de Análise Automatizada de Canários (ACA) Baseado em Testes Mann-Whitney | [Visualizar](./12-automated-canary-analysis-kayenta-alternative/README.md) |
| `13-cache-stampede-xfetch-probabilistic-early-expiration` | Prevenção de Efeito Manada em Caches com Algoritmo Probabilístico XFetch | [Visualizar](./13-cache-stampede-xfetch-probabilistic-early-expiration/README.md) |
| `14-disaster-recovery-cold-start-orchestrator` | Orquestrador de Recuperação Total a Frio (Cold Start) de Infraestrutura | [Visualizar](./14-disaster-recovery-cold-start-orchestrator/README.md) |
| `15-zero-downtime-database-credential-rotator` | Rotacionador em Produção de Senhas de Banco de Dados sem Reiniciar Aplicações | [Visualizar](./15-zero-downtime-database-credential-rotator/README.md) |
| `16-resilience-retry-exponential-jitter-tenacity` | Implementação Corporativa de Retentativas com Tenacity, Jitter Decorrelacionado | [Visualizar](./16-resilience-retry-exponential-jitter-tenacity/README.md) |
| `17-distributed-tracing-context-carrier-sqs` | Propagador de Contexto W3C Trace Context através de Filas de Mensagens Assíncronas | [Visualizar](./17-distributed-tracing-context-carrier-sqs/README.md) |
| `18-api-gateway-traffic-throttler-token-bucket` | Controlador de Vazão Dinâmico de Gateway com Alocação de Quotas por Cliente | [Visualizar](./18-api-gateway-traffic-throttler-token-bucket/README.md) |
| `19-incident-response-slack-war-room-bot` | Bot de Criação Instantânea de Canais de Crise (War Room) no Slack e Zoom | [Visualizar](./19-incident-response-slack-war-room-bot/README.md) |
| `20-runbook-automation-remediation-engine` | Motor Automatizado de Execução de Runbooks em Resposta a Alertas Críticos | [Visualizar](./20-runbook-automation-remediation-engine/README.md) |
