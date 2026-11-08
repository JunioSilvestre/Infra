# 09-templates-reutilizaveis — Templates e Módulos Reutilizáveis de CI/CD

Biblioteca corporativa de templates padronizados para .NET 10, Next.js/React, Python, Go, Terraform, Docker e Governança, prontos para reuso em múltiplos repositórios.

---

## 🏛️ Trilha de Projetos Práticos de CI/CD Nível Sênior (20 Projetos Reais)

| # | Projeto | Título / Foco de Engenharia | Ferramentas Chave |
|---|---|---|---|
| **01** | [`01-template-dotnet10-enterprise-ci/`](./01-template-dotnet10-enterprise-ci) | **Template Reutilizável de CI/CD para Aplicações e APIs em .NET 10** | `dotnet-cli, actions/setup-dotnet, github-actions` |
| **02** | [`02-template-nextjs-react-frontend-ci/`](./02-template-nextjs-react-frontend-ci) | **Template Reutilizável de CI/CD para Aplicações Frontend Next.js e React** | `pnpm, next, tsc, eslint` |
| **03** | [`03-template-python-fastapi-uv-ci/`](./03-template-python-fastapi-uv-ci) | **Template Reutilizável de CI/CD para APIs Python com uv, Ruff e Pytest** | `uv, ruff, mypy, pytest` |
| **04** | [`04-template-golang-microservice-ci/`](./04-template-golang-microservice-ci) | **Template Reutilizável de CI/CD para Microsserviços de Alta Performance em Go** | `go, golangci-lint, goreleaser` |
| **05** | [`05-template-terraform-module-compliance-ci/`](./05-template-terraform-module-compliance-ci) | **Template Reutilizável para Módulos Terraform com Validação, Lint e Testes** | `tflint, terraform-docs, terratest` |
| **06** | [`06-template-docker-secure-build-publish/`](./06-template-docker-secure-build-publish) | **Template Reutilizável de Build, Varredura e Publicação de Containers OCI** | `docker-buildx, trivy, cosign, syft` |
| **07** | [`07-template-ansible-role-molecule-ci/`](./07-template-ansible-role-molecule-ci) | **Template Reutilizável para Testes de Roles Ansible com Molecule e Docker** | `molecule, ansible-lint, docker` |
| **08** | [`08-template-security-compliance-gate-shared/`](./08-template-security-compliance-gate-shared) | **Template Compartilhado de Portão de Segurança e Compliance Corporativo** | `gitleaks, semgrep, trivy, license-checker` |
| **09** | [`09-template-database-migration-validation-ci/`](./09-template-database-migration-validation-ci) | **Template Reutilizável de Validação e Teste de Migrações de Banco de Dados** | `docker, psql, flyway, dotnet-ef` |
| **10** | [`10-template-monorepo-changeset-release-ci/`](./10-template-monorepo-changeset-release-ci) | **Template de Release e Versionamento para Monorepos com Changesets** | `changesets, pnpm, npm` |
| **11** | [`11-template-helm-chart-release-automation/`](./11-template-helm-chart-release-automation) | **Template Reutilizável para Lint, Testes e Publicação de Helm Charts** | `chart-testing, kind, helm-docs` |
| **12** | [`12-template-shellcheck-shfmt-infrastructure-ci/`](./12-template-shellcheck-shfmt-infrastructure-ci) | **Template Reutilizável de Validação e Qualidade para Repositórios de Scripts Bash** | `shellcheck, shfmt, bats-core` |
| **13** | [`13-template-lambda-serverless-deploy-ci/`](./13-template-lambda-serverless-deploy-ci) | **Template Reutilizável de Build e Deploy para Arquiteturas Serverless (AWS Lambda)** | `sam-cli, serverless-framework, aws-cli` |
| **14** | [`14-template-docs-as-code-docusaurus-ci/`](./14-template-docs-as-code-docusaurus-ci) | **Template de Documentação Técnica como Código com Docusaurus e GitHub Pages** | `docusaurus, nodejs, gh-pages` |
| **15** | [`15-template-grpc-api-codegen-ci/`](./15-template-grpc-api-codegen-ci) | **Template Reutilizável de Geração de Código a partir de Protocol Buffers (Buf / Protoc)** | `buf, protoc, grpc` |
| **16** | [`16-template-e2e-playwright-docker-ci/`](./16-template-e2e-playwright-docker-ci) | **Template Reutilizável de Testes E2E com Playwright em Containers Oficiais** | `playwright, docker` |
| **17** | [`17-template-k6-performance-benchmark-ci/`](./17-template-k6-performance-benchmark-ci) | **Template Reutilizável de Testes de Carga e Performance com k6 e InfluxDB** | `k6, influxdb, grafana` |
| **18** | [`18-template-multi-env-gitops-promotion-ci/`](./18-template-multi-env-gitops-promotion-ci) | **Template Reutilizável de Atualização de Tags em Repositórios GitOps** | `yq, git, gh-cli` |
| **19** | [`19-template-api-contract-pact-verifier-ci/`](./19-template-api-contract-pact-verifier-ci) | **Template Reutilizável de Verificação de Contratos de API com Pact Broker** | `pact-cli, curl, jq` |
| **20** | [`20-template-pipeline-governance-audit-checker/`](./20-template-pipeline-governance-audit-checker) | **Template de Auditoria e Conformidade de Pipelines (Pipeline as Code Governance)** | `actionlint, yq, jq, bash` |
