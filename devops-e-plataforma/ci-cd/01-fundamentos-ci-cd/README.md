# 01-fundamentos-ci-cd — Fundamentos de Integração e Entrega Contínua

Projetos de arquitetura de branching, esteiras determinísticas, versionamento semântico, merge queues e esteiras de release corporativas.

---

## 🏛️ Trilha de Projetos Práticos de CI/CD Nível Sênior (20 Projetos Reais)

| # | Projeto | Título / Foco de Engenharia | Ferramentas Chave |
|---|---|---|---|
| **01** | [`01-trunk-based-development-merge-gate/`](./01-trunk-based-development-merge-gate) | **Portão de Trunk-Based Development com Short-Lived Feature Branches** | `git, github-actions, bash` |
| **02** | [`02-semantic-versioning-automated-tagger/`](./02-semantic-versioning-automated-tagger) | **Versionamento Semântico Automatizado baseado em Conventional Commits** | `semantic-release, git, standard-version` |
| **03** | [`03-monorepo-path-filtering-pipeline/`](./03-monorepo-path-filtering-pipeline) | **Pipeline Otimizado para Monorepo com Filtro de Caminhos (Path Filtering)** | `git, jq, yq, github-actions` |
| **04** | [`04-merge-queue-concurrency-orchestrator/`](./04-merge-queue-concurrency-orchestrator) | **Orquestrador de Fila de Merge (Merge Queue) contra Condições de Corrida** | `github-merge-queue, git, bash` |
| **05** | [`05-release-candidate-promotion-workflow/`](./05-release-candidate-promotion-workflow) | **Workflow de Promoção de Release Candidates (RC) para Produção** | `github-actions, cosign, crane` |
| **06** | [`06-ephemeral-test-environment-lifecycle/`](./06-ephemeral-test-environment-lifecycle) | **Gerenciamento do Ciclo de Vida de Ambientes Efêmeros para Pull Requests** | `kubectl, helm, github-actions` |
| **07** | [`07-changelog-generation-pull-requests/`](./07-changelog-generation-pull-requests) | **Gerador Automatizado de CHANGELOG.md e Notas de Lançamento por Categorias** | `git-cliff, conventional-changelog` |
| **08** | [`08-fail-fast-pipeline-optimization/`](./08-fail-fast-pipeline-optimization) | **Otimização de Pipelines com Estratégia Fail-Fast e Paralelismo Inteligente** | `github-actions, gitlab-ci, bash` |
| **09** | [`09-hotfix-dual-merge-cherry-pick-sync/`](./09-hotfix-dual-merge-cherry-pick-sync) | **Sincronizador Automatizado de Hotfixes com Cherry-Pick Duplo** | `git, gh-cli, bash` |
| **10** | [`10-pipeline-telemetry-dora-metrics-exporter/`](./10-pipeline-telemetry-dora-metrics-exporter) | **Coletor de Telemetria de CI/CD para Métricas DORA (Deployment Frequency, Lead Time)** | `curl, jq, postgresql, grafana` |
| **11** | [`11-monolithic-build-caching-strategy/`](./11-monolithic-build-caching-strategy) | **Estratégia Avançada de Cache Multi-Camada para Builds Pesados** | `actions/cache, gitlab-cache, sha256sum` |
| **12** | [`12-golden-path-project-scaffolder-ci/`](./12-golden-path-project-scaffolder-ci) | **Scaffolder de 'Golden Path' para Inicialização de Novos Projetos com CI/CD Incluso** | `cookiecutter, gh-cli, bash` |
| **13** | [`13-pr-review-assignment-codeowners-enforcer/`](./13-pr-review-assignment-codeowners-enforcer) | **Enforcer de Revisão Obrigatória com CODEOWNERS e Rotatividade de Reviewers** | `git, codeowners, gh-cli` |
| **14** | [`14-ci-cost-budget-alert-limiter/`](./14-ci-cost-budget-alert-limiter) | **Monitor e Limitador de Gastos de Minutos de CI/CD para Controle de Orçamento** | `curl, jq, mailx, bc` |
| **15** | [`15-pipeline-dead-code-unused-dependency-gate/`](./15-pipeline-dead-code-unused-dependency-gate) | **Portão de CI para Detecção de Dependências Não Utilizadas e Código Morto** | `depcheck, knip, bash` |
| **16** | [`16-scheduled-dependency-bump-bot-manager/`](./16-scheduled-dependency-bump-bot-manager) | **Gerenciador e Consolidador de PRs Automáticos de Dependências (Dependabot/Renovate)** | `renovate, dependabot, gh-cli` |
| **17** | [`17-branch-protection-ruleset-as-code/`](./17-branch-protection-ruleset-as-code) | **Gerenciador de Regras de Proteção de Branches como Código (GitHub Rulesets)** | `curl, jq, gh-cli` |
| **18** | [`18-multi-stage-docker-layer-caching-ci/`](./18-multi-stage-docker-layer-caching-ci) | **Otimização de Builds Docker Multi-Stage com Cache Remoto no Registry** | `docker, buildx, ghcr.io` |
| **19** | [`19-pull-request-labeler-auto-triage/`](./19-pull-request-labeler-auto-triage) | **Classificador e Triagem Automática de Pull Requests Baseado em Arquivos Alterados** | `actions/labeler, yq` |
| **20** | [`20-ci-pipeline-status-dashboard-generator/`](./20-ci-pipeline-status-dashboard-generator) | **Gerador de Painel Executivo e Status Geral de Saúde de Pipelines da Organização** | `curl, jq, python3, gh-cli` |
