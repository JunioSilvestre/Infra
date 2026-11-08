# 03-gitlab-ci — GitLab CI/CD Avançado e Enterprise

Projetos em GitLab CI: Directed Acyclic Graphs (DAG), Dynamic Child Pipelines, Auto DevOps, GitLab Kubernetes Agent, Runners em Docker/k8s e Rules avançadas.

---

## 🏛️ Trilha de Projetos Práticos de CI/CD Nível Sênior (20 Projetos Reais)

| # | Projeto | Título / Foco de Engenharia | Ferramentas Chave |
|---|---|---|---|
| **01** | [`01-gitlab-dag-needs-pipeline-optimizer/`](./01-gitlab-dag-needs-pipeline-optimizer) | **Otimizador de Pipeline com Directed Acyclic Graph (DAG) e Diretiva 'needs'** | `gitlab-ci, yaml` |
| **02** | [`02-dynamic-child-pipelines-generator/`](./02-dynamic-child-pipelines-generator) | **Gerador de Dynamic Child Pipelines para Monorepos no GitLab** | `gitlab-ci, jq, yq, bash` |
| **03** | [`03-gitlab-kubernetes-agent-deployment/`](./03-gitlab-kubernetes-agent-deployment) | **Integração e Deploy GitOps Seguro com GitLab Agent for Kubernetes (KAS)** | `helm, kubectl, gitlab-agent` |
| **04** | [`04-rules-complex-conditional-logic-matrix/`](./04-rules-complex-conditional-logic-matrix) | **Matriz de Lógica Condicional Avançada com 'rules' e Expressões Regex** | `gitlab-ci rules, regex` |
| **05** | [`05-multi-project-pipeline-trigger-orchestrator/`](./05-multi-project-pipeline-trigger-orchestrator) | **Orquestrador de Pipelines Multi-Projetos com Triggers Cruzados e Dependências** | `gitlab-ci triggers, curl` |
| **06** | [`06-gitlab-runner-docker-autoscaler-aws/`](./06-gitlab-runner-docker-autoscaler-aws) | **Auto-Scaler de GitLab Runners em AWS EC2 com Docker Machine / Fleeting** | `gitlab-runner, aws-ec2, docker` |
| **07** | [`07-secure-files-mobile-keystore-signing/`](./07-secure-files-mobile-keystore-signing) | **Gerenciamento Seguro de Arquivos de Assinatura Mobile com Project Secure Files** | `curl, gitlab-secure-files, jarsigner` |
| **08** | [`08-cache-fallback-distributed-s3/`](./08-cache-fallback-distributed-s3) | **Estratégia de Cache Distribuído com Fallback e Armazenamento no AWS S3** | `gitlab-runner, aws-s3, yaml` |
| **09** | [`09-custom-docker-in-docker-dind-hardening/`](./09-custom-docker-in-docker-dind-hardening) | **Hardening e Otimização de Docker-in-Docker (DinD) em Pipelines do GitLab** | `docker:dind, openssl, gitlab-ci` |
| **10** | [`10-environments-manual-approval-slack-notifier/`](./10-environments-manual-approval-slack-notifier) | **Deploy em Ambientes com Aprovação Manual e Notificação Interativa no Slack** | `gitlab-ci, curl, jq, slack-webhook` |
| **11** | [`11-gitlab-api-pipeline-auto-retry-flaky/`](./11-gitlab-api-pipeline-auto-retry-flaky) | **Tratador de Testes Instáveis (Flaky Tests) e Auto-Retry Inteligente via API** | `gitlab-ci retry, curl, jq` |
| **12** | [`12-parallel-matrix-cross-environment-testing/`](./12-parallel-matrix-cross-environment-testing) | **Execução Paralela com 'parallel: matrix' para Matrizes de Teste de Integração** | `gitlab-ci matrix, docker services` |
| **13** | [`13-gitlab-package-registry-nuget-npm-publisher/`](./13-gitlab-package-registry-nuget-npm-publisher) | **Publicador Automatizado de Pacotes Corporativos no GitLab Package Registry** | `dotnet nuget, npm, twine, gitlab-registry` |
| **14** | [`14-compliance-framework-pipeline-enforcer/`](./14-compliance-framework-pipeline-enforcer) | **Enforcer de Compliance Frameworks Obrigatórios para Repositórios Corporativos** | `gitlab-compliance, yaml` |
| **15** | [`15-pre-build-license-compliance-scanner/`](./15-pre-build-license-compliance-scanner) | **Auditor e Scanner de Conformidade de Licenças de Software Open Source** | `license-finder, syft, jq` |
| **16** | [`16-gitlab-ci-yaml-anchor-extends-refactoring/`](./16-gitlab-ci-yaml-anchor-extends-refactoring) | **Refatoração e Modularização de Pipelines com Anchors YAML e 'extends'** | `gitlab-ci extends, yaml` |
| **17** | [`17-code-quality-gl-code-climate-generator/`](./17-code-quality-gl-code-climate-generator) | **Gerador de Relatórios de Code Quality Integrados no Formato Code Climate** | `eslint, jq, gitlab-codequality` |
| **18** | [`18-gitlab-merge-request-approval-rule-sync/`](./18-gitlab-merge-request-approval-rule-sync) | **Sincronizador e Auditor de Regras de Aprovação de Merge Requests via API** | `curl, jq, bash` |
| **19** | [`19-release-milestone-auto-closer-gitlab/`](./19-release-milestone-auto-closer-gitlab) | **Fechador e Auditor Automático de Milestones e Issues Concluídas no GitLab** | `curl, jq, bash` |
| **20** | [`20-gitlab-ci-cost-and-duration-profiler/`](./20-gitlab-ci-cost-and-duration-profiler) | **Profiler de Tempo de Execução e Consumo de Minutos de Runners no GitLab CI** | `curl, jq, awk, column` |
