# 02-github-actions — GitHub Actions Avançado e Enterprise

Projetos de engenharia com GitHub Actions: OIDC para AWS/Azure sem credenciais estáticas, Runners auto-hospedados em Kubernetes, Composite Actions, Matrix Builds e Reusable Workflows.

---

## 🏛️ Trilha de Projetos Práticos de CI/CD Nível Sênior (20 Projetos Reais)

| # | Projeto | Título / Foco de Engenharia | Ferramentas Chave |
|---|---|---|---|
| **01** | [`01-aws-oidc-federated-auth-workflow/`](./01-aws-oidc-federated-auth-workflow) | **Autenticação Federada AWS sem Chaves Estáticas via OIDC (OpenID Connect)** | `aws-actions/configure-aws-credentials, aws-cli` |
| **02** | [`02-azure-workload-identity-federation/`](./02-azure-workload-identity-federation) | **Autenticação Federada Azure com Workload Identity Federation via OIDC** | `azure/login, az-cli` |
| **03** | [`03-actions-runner-controller-k8s-scaler/`](./03-actions-runner-controller-k8s-scaler) | **Escalonador Autônomo de Runners Self-Hosted em Kubernetes com ARC** | `helm, kubectl, actions-runner-controller` |
| **04** | [`04-reusable-workflows-centralized-governance/`](./04-reusable-workflows-centralized-governance) | **Governança Centralizada com Reusable Workflows e Templates Corporativos** | `github-actions, yaml` |
| **05** | [`05-custom-composite-actions-packager/`](./05-custom-composite-actions-packager) | **Desenvolvimento e Empacotamento de Composite Actions Modulares** | `github-actions composite, bash` |
| **06** | [`06-matrix-cross-platform-build-strategy/`](./06-matrix-cross-platform-build-strategy) | **Estratégia de Build Multi-Plataforma com Matriz Dinâmica (Linux, macOS, Windows)** | `github-actions, powershell, bash` |
| **07** | [`07-dynamic-matrix-generation-json/`](./07-dynamic-matrix-generation-json) | **Geração Dinâmica de Matriz de CI via Script para Pipelines Parametrizados** | `jq, github-actions, bash` |
| **08** | [`08-secure-secrets-vault-injection-action/`](./08-secure-secrets-vault-injection-action) | **Injeção Dinâmica de Segredos do HashiCorp Vault em Workflows do GitHub** | `hashicorp/vault-action, vault` |
| **09** | [`09-pr-comment-chatops-command-dispatcher/`](./09-pr-comment-chatops-command-dispatcher) | **Despachante de ChatOps via Comentários em Pull Requests (/deploy, /test)** | `actions/github-script, gh-cli` |
| **10** | [`10-artifact-attestation-slsa-provenance/`](./10-artifact-attestation-slsa-provenance) | **Assinatura Criptográfica de Artefatos e Proveniência SLSA no GitHub Actions** | `actions/attest-build-provenance, gh-attestation` |
| **11** | [`11-github-deployment-api-environments-gate/`](./11-github-deployment-api-environments-gate) | **Integração com GitHub Deployments API e Proteção de Ambientes com Aprovação** | `github-environments, curl, gh-cli` |
| **12** | [`12-self-hosted-runner-ephemeral-cleanup/`](./12-self-hosted-runner-ephemeral-cleanup) | **Higienização e Isolamento Atômico de Runners Self-Hosted Efêmeros** | `docker, find, pkill, bash` |
| **13** | [`13-workflow-telemetry-datadog-exporter/`](./13-workflow-telemetry-datadog-exporter) | **Exportador de Telemetria e Duração de Steps de Workflows para o Datadog** | `datadog-ci, webhooks, jq` |
| **14** | [`14-github-script-octokit-automation/`](./14-github-script-octokit-automation) | **Automações Avançadas da API do GitHub usando actions/github-script e Octokit** | `actions/github-script, octokit, javascript` |
| **15** | [`15-monorepo-changeset-automated-publishing/`](./15-monorepo-changeset-automated-publishing) | **Orquestrador de Versões e Publicação para Monorepos com Changesets** | `changesets, pnpm, npm` |
| **16** | [`16-docker-bake-multi-image-builder-action/`](./16-docker-bake-multi-image-builder-action) | **Construção Concorrente de Múltiplas Imagens Docker com Docker Buildx Bake** | `docker/bake-action, docker-buildx` |
| **17** | [`17-step-summary-markdown-reporter/`](./17-step-summary-markdown-reporter) | **Gerador de Relatórios Ricos em Markdown no GitHub Step Summary** | `github-step-summary, awk, jq` |
| **18** | [`18-concurrency-cancel-in-progress-manager/`](./18-concurrency-cancel-in-progress-manager) | **Otimizador de Fila com Cancelamento Automático de Execuções Obsoletas** | `github-actions concurrency` |
| **19** | [`19-secure-runner-network-firewall-rules/`](./19-secure-runner-network-firewall-rules) | **Firewall de Rede e Isolamento de Tráfego de Saída (Egress) em Runners** | `iptables, nftables, bash` |
| **20** | [`20-organization-workflow-linter-actionlint/`](./20-organization-workflow-linter-actionlint) | **Linter Estático e Validador de Sintaxe de Workflows com actionlint** | `actionlint, shellcheck` |
