# Módulo: Engenharia DevOps, CI/CD e Release com Python

Projetos em Python para automação de esteiras de CI/CD, release semântico, métricas DORA, orquestração de testes e gates de qualidade corporativos.

Este módulo contém 20 projetos práticos de nível sênior baseados na vida real corporativa (SRE, Platform Engineering, DevOps e Infraestrutura em Nuvem).

## Índice de Projetos

| Diretório | Nome do Projeto | Documentação |
|:---|:---|:---:|
| `01-semantic-release-git-tag-manager` | Orquestrador de Versionamento Semântico e Publicação Automática de Releases | [Visualizar](./01-semantic-release-git-tag-manager/README.md) |
| `02-github-actions-dynamic-matrix-builder` | Construtor de Matriz Dinâmica de Jobs para Pipelines de CI em Monorepos | [Visualizar](./02-github-actions-dynamic-matrix-builder/README.md) |
| `03-dora-metrics-collector-prometheus-api` | Coletor e Calculador das Quatro Métricas DORA (Deployment Frequency, MTTR) | [Visualizar](./03-dora-metrics-collector-prometheus-api/README.md) |
| `04-docker-image-tag-pruner-registry-api` | Purgador Inteligente de Imagens e Tags Antigas em Registries Docker Privados | [Visualizar](./04-docker-image-tag-pruner-registry-api/README.md) |
| `05-helm-chart-dependency-updater-bot` | Bot Automatizado de Atualização e Testes de Dependências de Helm Charts | [Visualizar](./05-helm-chart-dependency-updater-bot/README.md) |
| `06-ci-pipeline-duration-anomaly-detector` | Detector de Anomalias de Duração e Gargalos em Pipelines de Integração Contínua | [Visualizar](./06-ci-pipeline-duration-anomaly-detector/README.md) |
| `07-flaky-test-detector-pytest-analyzer` | Analisador e Quarentenador de Testes Instáveis (Flaky Tests) em Suítes Pytest | [Visualizar](./07-flaky-test-detector-pytest-analyzer/README.md) |
| `08-artifact-checksum-manifest-signer` | Gerador e Assinador Criptográfico de Manifestos de Integridade de Artefatos | [Visualizar](./08-artifact-checksum-manifest-signer/README.md) |
| `09-slack-interactive-deployment-approver` | Bot Interativo de Aprovação de Deploys no Slack com Webhooks e FastAPI | [Visualizar](./09-slack-interactive-deployment-approver/README.md) |
| `10-multi-repo-sync-file-orchestrator` | Sincronizador em Massa de Arquivos de Governança (.github/workflows, linters) | [Visualizar](./10-multi-repo-sync-file-orchestrator/README.md) |
| `11-code-coverage-diff-threshold-gate` | Portão de Cobertura de Código no Diff do Pull Request (Cobertura/LCOV) | [Visualizar](./11-code-coverage-diff-threshold-gate/README.md) |
| `12-jira-gitlab-sync-release-automator` | Sincronizador Automatizado entre Releases do GitLab e Issues no Atlassian Jira | [Visualizar](./12-jira-gitlab-sync-release-automator/README.md) |
| `13-database-migration-linter-pglast` | Linter Estático de Scripts de Migração SQL com Parser AST pglast | [Visualizar](./13-database-migration-linter-pglast/README.md) |
| `14-sonarqube-metrics-pull-request-commenter` | Comentador Automatizado de Métricas e Débito Técnico do SonarQube em PRs | [Visualizar](./14-sonarqube-metrics-pull-request-commenter/README.md) |
| `15-ephemeral-environment-cost-tracker` | Rastreador e Destruidor de Ambientes Efêmeros com Alerta de Gastos | [Visualizar](./15-ephemeral-environment-cost-tracker/README.md) |
| `16-container-base-image-update-scanner` | Scanner de Atualizações de Imagens Base em Dockerfiles com Alertas de CVE | [Visualizar](./16-container-base-image-update-scanner/README.md) |
| `17-blue-green-traffic-evaluator-engine` | Avaliador Automatizado de Taxas de Erro e Latência durante Deploys Blue/Green | [Visualizar](./17-blue-green-traffic-evaluator-engine/README.md) |
| `18-conftest-rego-policy-test-generator` | Gerador Automatizado de Casos de Teste para Políticas OPA/Conftest em Python | [Visualizar](./18-conftest-rego-policy-test-generator/README.md) |
| `19-git-worktree-workspace-orchestrator` | Orquestrador CLI de Múltiplos Ambientes Concorrentes com Git Worktrees | [Visualizar](./19-git-worktree-workspace-orchestrator/README.md) |
| `20-automated-rollback-orchestrator-helm` | Orquestrador de Rollback Imediato de Releases Helm com Notificação de Causa Raiz | [Visualizar](./20-automated-rollback-orchestrator-helm/README.md) |
