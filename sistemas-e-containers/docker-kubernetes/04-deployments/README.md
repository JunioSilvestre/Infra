# Módulo: Estratégias Avançadas de Deployment e Release

Blue-Green, Canary, Progressive Delivery, Argo Rollouts e técnicas de entrega contínua com risco zero em produção.

Este módulo contém 20 projetos práticos de nível sênior baseados no dia a dia real de engenheiros de SRE, DevOps e Plataforma operando em empresas de alta escala (Fintechs, Hospitais, Seguradoras e Big Techs) nos polos de Nova York (NY), Massachusetts (MA) e Connecticut (CT).

## Índice de Projetos

| Diretório | Nome do Projeto | Documentação |
|:---|:---|:---:|
| `01-argo-rollouts-canary-analysis-prometheus` | Canary Release Automatizado com Análise de Métricas Prometheus via Argo Rollouts | [Visualizar](./01-argo-rollouts-canary-analysis-prometheus/README.md) |
| `02-blue-green-istio-virtualservice-traffic-shift` | Migração Instantânea de Tráfego Blue-Green com Istio Service Mesh em Boston | [Visualizar](./02-blue-green-istio-virtualservice-traffic-shift/README.md) |
| `03-flagd-openfeature-feature-flagging` | Entrega Progressiva com Feature Flags e OpenFeature no Kubernetes | [Visualizar](./03-flagd-openfeature-feature-flagging/README.md) |
| `04-flagger-linkerd-progressive-delivery` | Entrega Progressiva Automatizada com Flagger e Linkerd Service Mesh | [Visualizar](./04-flagger-linkerd-progressive-delivery/README.md) |
| `05-dark-launching-traffic-mirroring-envoy` | Shadow Deploy e Espelhamento de Tráfego de Produção com Envoy Proxy | [Visualizar](./05-dark-launching-traffic-mirroring-envoy/README.md) |
| `06-database-schema-expand-contract-pattern` | Estratégia de Migração de Banco Zero-Downtime com Padrão Expand and Contract | [Visualizar](./06-database-schema-expand-contract-pattern/README.md) |
| `07-header-based-routing-qa-sandboxes` | Ambientes de Teste Dinâmicos em Produção via Header-Based Routing | [Visualizar](./07-header-based-routing-qa-sandboxes/README.md) |
| `08-chaos-experiment-during-rollout` | Validação de Resiliência Injetando Falhas de Pod Durante Rollout Canário | [Visualizar](./08-chaos-experiment-during-rollout/README.md) |
| `09-a-b-testing-traffic-splitting-nginx` | Testes A/B com Divisão Percentual Precisa no Nginx Ingress Controller | [Visualizar](./09-a-b-testing-traffic-splitting-nginx/README.md) |
| `10-session-affinity-sticky-canary` | Entrega Canário com Afinidade de Sessão Baseada em Cookie (Sticky Canary) | [Visualizar](./10-session-affinity-sticky-canary/README.md) |
| `11-gitops-pr-preview-environments-argocd` | Provisionamento Autônomo de Ambientes Efêmeros por Pull Request com ArgoCD | [Visualizar](./11-gitops-pr-preview-environments-argocd/README.md) |
| `12-canary-latency-slo-automated-rollback` | Rollback Automático Baseado em Degradação de Latência P99 de Aplicação | [Visualizar](./12-canary-latency-slo-automated-rollback/README.md) |
| `13-statefulset-partitioned-rolling-update` | Rolling Update Particionado e Controlado em Cargas de Trabalho StatefulSet | [Visualizar](./13-statefulset-partitioned-rolling-update/README.md) |
| `14-blue-green-smoke-test-webhook` | Validação de Pré-Promoção com Webhooks e Testes de Fumaça Sintéticos | [Visualizar](./14-blue-green-smoke-test-webhook/README.md) |
| `15-daemonset-rolling-update-surge` | Atualização Otimizada de Agentes de Infraestrutura com DaemonSet RollingUpdate | [Visualizar](./15-daemonset-rolling-update-surge/README.md) |
| `16-canary-apdex-score-evaluation` | Promoção Canário Baseada em Índice de Satisfação de Usuário (Apdex Score) | [Visualizar](./16-canary-apdex-score-evaluation/README.md) |
| `17-dynamic-env-var-reloader-stakater` | Rolling Update Automático de Pods na Alteração de ConfigMaps com Stakater Reloader | [Visualizar](./17-dynamic-env-var-reloader-stakater/README.md) |
| `18-geo-routing-multi-cluster-deployments` | Estratégia de Deploy Global com Roteamento Geográfico e DNS Latency Routing | [Visualizar](./18-geo-routing-multi-cluster-deployments/README.md) |
| `19-ephemeral-database-cloning-deployments` | Clonagem Instantânea de Volumes de Banco para Ambientes de Validação de Deploy | [Visualizar](./19-ephemeral-database-cloning-deployments/README.md) |
| `20-production-release-readiness-checklist-gate` | Quality Gate Automatizado de Prontidão Operacional (Readiness Gate) em CI/CD | [Visualizar](./20-production-release-readiness-checklist-gate/README.md) |
