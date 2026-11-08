# 08-gitops-e-cd-moderno — GitOps e Entrega Contínua Moderna

Projetos práticos em GitOps: ArgoCD, Flux v2, ApplicationSets, promoção declarativa entre ambientes, detecção de drift e criptografia com SOPS/Age.

---

## 🏛️ Trilha de Projetos Práticos de CI/CD Nível Sênior (20 Projetos Reais)

| # | Projeto | Título / Foco de Engenharia | Ferramentas Chave |
|---|---|---|---|
| **01** | [`01-argocd-applicationset-multi-cluster-sync/`](./01-argocd-applicationset-multi-cluster-sync) | **Orquestrador Multi-Cluster com ArgoCD ApplicationSet e Geradores de Clusters** | `argocd, kubectl, yaml` |
| **02** | [`02-flux-v2-kustomization-gitrepository-pipeline/`](./02-flux-v2-kustomization-gitrepository-pipeline) | **Pipeline GitOps com Flux v2: Sincronização Declarativa e Verificação de Saúde** | `flux, kubectl, yaml` |
| **03** | [`03-environment-promotion-pull-request-automation/`](./03-environment-promotion-pull-request-automation) | **Automação de Promoção de Ambientes (Dev -> Staging -> Prod) via Pull Requests** | `git, gh-cli, yq, bash` |
| **04** | [`04-sops-age-gitops-secret-encryption-pipeline/`](./04-sops-age-gitops-secret-encryption-pipeline) | **Gestão e Criptografia de Segredos em Repositórios GitOps com Mozilla SOPS e Age** | `sops, age, flux, kubectl` |
| **05** | [`05-argocd-drift-detection-auto-sync-alerter/`](./05-argocd-drift-detection-auto-sync-alerter) | **Detector de Desvio (Drift) e Reconciliação Automática no ArgoCD** | `argocd, curl, jq, slack-webhook` |
| **06** | [`06-sealed-secrets-bitnami-controller-pipeline/`](./06-sealed-secrets-bitnami-controller-pipeline) | **Criptografia Unidirecional de Segredos no Git com Bitnami Sealed Secrets** | `kubeseal, kubectl, yaml` |
| **07** | [`07-kustomize-overlay-clean-architecture-gitops/`](./07-kustomize-overlay-clean-architecture-gitops) | **Arquitetura Limpa de Overlays Kustomize para Gestão Multi-Ambiente** | `kustomize, kubectl` |
| **08** | [`08-helm-controller-flux-v2-declarative-releases/`](./08-helm-controller-flux-v2-declarative-releases) | **Gerenciamento Declarativo de Releases Helm com HelmController do Flux v2** | `flux, helm, kubectl` |
| **09** | [`09-gitops-pull-request-diff-preview-bot/`](./09-gitops-pull-request-diff-preview-bot) | **Bot de Visualização de Diff de Manifestos em Pull Requests do Repositório GitOps** | `kustomize, dyff, gh-cli` |
| **10** | [`10-argocd-notifications-slack-pagerduty-integration/`](./10-argocd-notifications-slack-pagerduty-integration) | **Sistema Centralizado de Notificações do ArgoCD para Slack e PagerDuty** | `argocd-notifications, slack-api, pagerduty` |
| **11** | [`11-external-dns-gitops-automated-dns-sync/`](./11-external-dns-gitops-automated-dns-sync) | **Automação Declarativa de Registros DNS com ExternalDNS em GitOps** | `external-dns, helm, kubectl` |
| **12** | [`12-argocd-vault-plugin-secrets-interpolator/`](./12-argocd-vault-plugin-secrets-interpolator) | **Interpolação Dinâmica de Segredos do Vault no GitOps com ArgoCD Vault Plugin (AVP)** | `argocd-vault-plugin, vault, kubectl` |
| **13** | [`13-gitops-commit-signing-gpg-ssh-gate/`](./13-gitops-commit-signing-gpg-ssh-gate) | **Portão de Imposição de Commits Assinados (GPG/SSH) no Repositório GitOps** | `gpg, git, flux, argocd` |
| **14** | [`14-progressive-rollout-gitops-analysis-template/`](./14-progressive-rollout-gitops-analysis-template) | **Templates de Análise de Métricas para Rollouts Progressivos em GitOps** | `argo-rollouts, prometheus, yaml` |
| **15** | [`15-monorepo-gitops-split-repository-strategy/`](./15-monorepo-gitops-split-repository-strategy) | **Estratégia de Separação entre Repositório de Código da Aplicação e Repositório GitOps** | `git, ssh, github-actions` |
| **16** | [`16-flux-image-reflector-auto-updater/`](./16-flux-image-reflector-auto-updater) | **Atualização Automática de Tags de Imagem no Git com ImageReflector do Flux** | `flux-image-automation, git, oci-registry` |
| **17** | [`17-argocd-rbac-least-privilege-enforcer/`](./17-argocd-rbac-least-privilege-enforcer) | **Auditor e Enforcer de Permissões de Menor Privilégio no RBAC do ArgoCD** | `argocd, oidc, yaml` |
| **18** | [`18-gitops-disaster-recovery-backup-restore/`](./18-gitops-disaster-recovery-backup-restore) | **Plano de Recuperação de Desastres (DR) para Clusters GitOps do Zero (Cold Start)** | `kubectl, helm, flux, bash` |
| **19** | [`19-kyverno-gatekeeper-gitops-policy-audit/`](./19-kyverno-gatekeeper-gitops-policy-audit) | **Auditoria de Políticas de Admissão no Cluster GitOps com Kyverno e Gatekeeper** | `kyverno, gatekeeper, kubectl` |
| **20** | [`20-gitops-release-verification-evidence-exporter/`](./20-gitops-release-verification-evidence-exporter) | **Exportador Automatizado de Trilha de Auditoria e Evidências de Releases GitOps** | `git, jq, gh-cli, gpg` |
