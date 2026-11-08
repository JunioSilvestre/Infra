# 07-estrategias-de-deploy — Estratégias de Deploy e Liberação Progressiva

Projetos práticos de deploy avançado: Blue/Green com Nginx/AWS ALB, Canary com Istio/Argo Rollouts, Feature Flags, Rolling Updates com drenagem e Rollback automático.

---

## 🏛️ Trilha de Projetos Práticos de CI/CD Nível Sênior (20 Projetos Reais)

| # | Projeto | Título / Foco de Engenharia | Ferramentas Chave |
|---|---|---|---|
| **01** | [`01-blue-green-traffic-switching-alb-nginx/`](./01-blue-green-traffic-switching-alb-nginx) | **Chaveador de Tráfego Blue/Green com AWS ALB e Nginx sem Queda de Conexão** | `aws-cli, nginx, jq, curl` |
| **02** | [`02-canary-deployment-argo-rollouts-istio/`](./02-canary-deployment-argo-rollouts-istio) | **Deploy Canário Progressivo com Argo Rollouts e Service Mesh Istio** | `kubectl, argo-rollouts, istioctl` |
| **03** | [`03-feature-flag-rollout-openfeature-flipt/`](./03-feature-flag-rollout-openfeature-flipt) | **Liberação Gradual de Funcionalidades com Feature Flags via OpenFeature e Flipt** | `openfeature, flipt, curl, jq` |
| **04** | [`04-rolling-update-connection-draining-k8s/`](./04-rolling-update-connection-draining-k8s) | **Atualização Contínua (Rolling Update) no Kubernetes com Drenagem Limpa e PreStop Hook** | `kubectl, yaml, k8s-deployments` |
| **05** | [`05-automated-healthcheck-rollback-watchdog/`](./05-automated-healthcheck-rollback-watchdog) | **Watchdog Pós-Deploy com Rollback Automático Baseado em Taxa de Erro HTTP** | `curl, jq, kubectl, helm` |
| **06** | [`06-ab-testing-traffic-split-ingress/`](./06-ab-testing-traffic-split-ingress) | **Testes A/B com Divisão de Tráfego Baseada em Headers HTTP no Nginx Ingress** | `kubectl, nginx-ingress, curl` |
| **07** | [`07-shadow-deployment-traffic-mirroring-envoy/`](./07-shadow-deployment-traffic-mirroring-envoy) | **Deploy Espelho (Shadow Deployment) com Duplicação de Tráfego Real via Envoy** | `envoy, istio, yaml` |
| **08** | [`08-database-expand-contract-migration-pattern/`](./08-database-expand-contract-migration-pattern) | **Deploy de Banco de Dados com Padrão Expand & Contract para Zero Downtime** | `psql, flyway, dotnet-ef` |
| **09** | [`09-lambda-serverless-gradual-alias-shifting/`](./09-lambda-serverless-gradual-alias-shifting) | **Migração Gradual de Tráfego em Funções Serverless (AWS Lambda Aliases e CodeDeploy)** | `aws-cli, sam-cli, terraform` |
| **10** | [`10-multi-region-active-active-deployment-router/`](./10-multi-region-active-active-deployment-router) | **Deploy Coordenado Multi-Região Ativo-Ativo com Verificação de Saúde Geográfica** | `aws-cli, jq, curl, bash` |
| **11** | [`11-warmup-cache-pre-warming-post-deploy/`](./11-warmup-cache-pre-warming-post-deploy) | **Aquecimento Prévio de Caches (Cache Warming) Pós-Deploy antes da Liberação de Tráfego** | `redis-cli, curl, jq, bash` |
| **12** | [`12-dark-launch-performance-evaluator/`](./12-dark-launch-performance-evaluator) | **Avaliação de Performance de Novas Rotas com Dark Launching** | `curl, k6, datadog-api` |
| **13** | [`13-ecs-rolling-deployment-circuit-breaker/`](./13-ecs-rolling-deployment-circuit-breaker) | **Deploy Contínuo no AWS ECS com Circuit Breaker e Rollback Gerenciado** | `aws-ecs, aws-cli, jq` |
| **14** | [`14-spa-static-assets-atomic-symlink-deployer/`](./14-spa-static-assets-atomic-symlink-deployer) | **Deploy Atômico de Single Page Applications (SPA) com Links Simbólicos e Assets Versionados** | `ln, rsync, nginx, bash` |
| **15** | [`15-grpc-healthcheck-probe-drainer/`](./15-grpc-healthcheck-probe-drainer) | **Drenagem Graciosa e Verificação de Saúde de Serviços gRPC em Deploy** | `grpc-health-probe, bash` |
| **16** | [`16-maintenance-page-graceful-fallback-router/`](./16-maintenance-page-graceful-fallback-router) | **Roteador de Página de Manutenção com Fallback Gracioso e Bypass por IP** | `nginx, curl, sed` |
| **17** | [`17-datadog-deployment-marker-annotation/`](./17-datadog-deployment-marker-annotation) | **Registrador de Marcadores de Deploy (Deployment Markers) no Datadog e New Relic** | `curl, jq, datadog-api` |
| **18** | [`18-progressive-delivery-flagger-linkerd/`](./18-progressive-delivery-flagger-linkerd) | **Entrega Progressiva com Flagger e Service Mesh Linkerd no Kubernetes** | `flagger, linkerd, kubectl` |
| **19** | [`19-rolling-restart-daemonset-statefulset-k8s/`](./19-rolling-restart-daemonset-statefulset-k8s) | **Orquestrador de Reinicialização Segura de StatefulSets e DaemonSets em Kubernetes** | `kubectl, jq, sleep, awk` |
| **20** | [`20-continuous-deployment-dry-run-simulator/`](./20-continuous-deployment-dry-run-simulator) | **Simulador e Auditor Pré-Deploy em Modo Dry-Run com Relatório de Impacto** | `bash, ssh, kubectl --dry-run=client` |
