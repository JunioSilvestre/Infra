# 05-devops-e-ci-cd — DevOps, CI/CD e Release Engineering

Projetos práticos em Bash para automação de esteiras de build, gerenciamento de runners, gates de qualidade, rollback e deploy contínuo.

---

## 🏛️ Trilha de Projetos Práticos de Nível Sênior (20 Projetos Reais)

| # | Projeto | Título / Foco de Negócio | Ferramentas Nativas Chave |
|---|---|---|---|
| **01** | [`01-semantic-version-tagger-changelog-sh/`](./01-semantic-version-tagger-changelog-sh) | **Versionador Semântico e Gerador de Changelog Baseado em Conventional Commits** | `git, awk, sed, sort` |
| **02** | [`02-git-monorepo-affected-service-detector-sh/`](./02-git-monorepo-affected-service-detector-sh) | **Detector de Serviços Afetados para Builds Otimizados em Monorepos** | `git, jq, awk, sort` |
| **03** | [`03-github-actions-self-hosted-runner-scaler-sh/`](./03-github-actions-self-hosted-runner-scaler-sh) | **Provisionador e Auto-Scaler de Runners Self-Hosted do GitHub Actions** | `curl, jq, tar, systemd-run, logger` |
| **04** | [`04-gitlab-runner-cache-purger-gc-sh/`](./04-gitlab-runner-cache-purger-gc-sh) | **Limpador e Coletor de Lixo (Garbage Collection) de Caches do GitLab Runner** | `find, docker, du, df, xargs` |
| **05** | [`05-docker-layer-cache-pruner-registry-sh/`](./05-docker-layer-cache-pruner-registry-sh) | **Higienizador e Purgador de Tags Antigas em Registries Docker Privados** | `curl, jq, awk, date` |
| **06** | [`06-helm-release-rollback-watchdog-sh/`](./06-helm-release-rollback-watchdog-sh) | **Watchdog e Rollback Automatizado de Releases Helm em Kubernetes** | `helm, kubectl, jq, logger` |
| **07** | [`07-blue-green-deployment-traffic-switch-sh/`](./07-blue-green-deployment-traffic-switch-sh) | **Chaveador de Tráfego Blue/Green com Verificação de Saúde e Zero Downtime** | `curl, nginx, ln, systemctl, jq` |
| **08** | [`08-canary-deployment-metrics-analyzer-sh/`](./08-canary-deployment-metrics-analyzer-sh) | **Orquestrador de Deploy Canário com Análise Automatizada de Taxa de Erro** | `awk, curl, nginx, date, bc` |
| **09** | [`09-pre-commit-shellcheck-shfmt-gate-sh/`](./09-pre-commit-shellcheck-shfmt-gate-sh) | **Portão de Qualidade de Scripts com ShellCheck e shfmt em Pre-Commit Hook** | `git, shellcheck, shfmt, awk` |
| **10** | [`10-sonarqube-cli-quality-gate-enforcer-sh/`](./10-sonarqube-cli-quality-gate-enforcer-sh) | **Enforcer de Quality Gate do SonarQube via Linha de Comando** | `curl, jq, sleep, logger` |
| **11** | [`11-terraform-drift-detector-plan-validator-sh/`](./11-terraform-drift-detector-plan-validator-sh) | **Detector de Desvio (Drift) de Infraestrutura Terraform com Alertas Diários** | `terraform, jq, grep, curl` |
| **12** | [`12-ansible-playbook-dry-run-auditor-sh/`](./12-ansible-playbook-dry-run-auditor-sh) | **Auditor de Playbooks Ansible em Modo Dry-Run (--check) com Relatório de Impacto** | `ansible-playbook, awk, sed, column` |
| **13** | [`13-nexus-artifactory-artifact-cleanup-sh/`](./13-nexus-artifactory-artifact-cleanup-sh) | **Expurgo e Política de Retenção de Binários em Nexus/Artifactory** | `curl, jq, xargs, date` |
| **14** | [`14-kubernetes-manifest-kustomize-validator-sh/`](./14-kubernetes-manifest-kustomize-validator-sh) | **Validador e Lint de Manifestos Kubernetes e Kustomize com kubeval e conftest** | `kustomize, kubeconform, conftest, yq` |
| **15** | [`15-pull-request-preview-env-provisioner-sh/`](./15-pull-request-preview-env-provisioner-sh) | **Provisionador e Destruidor de Ambientes Efêmeros de Preview para Pull Requests** | `kubectl, helm, sed, git, curl` |
| **16** | [`16-database-migration-flyway-liquibase-gate-sh/`](./16-database-migration-flyway-liquibase-gate-sh) | **Portão de CI/CD para Migrações de Banco de Dados com Flyway/Liquibase e Verificação de Rollback** | `flyway, liquibase, psql, docker` |
| **17** | [`17-ci-secret-masker-sanitizer-sh/`](./17-ci-secret-masker-sanitizer-sh) | **Sanitizador e Mascarador de Segredos e Variáveis de Ambiente em Logs de CI** | `sed, awk, env, grep` |
| **18** | [`18-dependency-vulnerability-trivy-grype-gate-sh/`](./18-dependency-vulnerability-trivy-grype-gate-sh) | **Portão de Segurança de Dependências e Imagens de Containers com Trivy e Grype** | `trivy, grype, jq, logger` |
| **19** | [`19-git-worktree-multi-branch-orchestrator-sh/`](./19-git-worktree-multi-branch-orchestrator-sh) | **Orquestrador de Múltiplos Ambientes Concorrentes com Git Worktrees** | `git, ln, mkdir, rm` |
| **20** | [`20-zero-downtime-rolling-deployer-sh/`](./20-zero-downtime-rolling-deployer-sh) | **Deployer de Atualização Contínua (Rolling Update) Nó por Nó com Drenagem de Tráfego** | `ssh, curl, systemctl, haproxy, logger` |
