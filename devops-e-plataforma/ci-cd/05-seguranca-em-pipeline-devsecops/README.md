# 05-seguranca-em-pipeline-devsecops — DevSecOps e Segurança na Esteira de CI/CD

Projetos em DevSecOps cobrindo SAST (Semgrep, Sonar), SCA (Trivy, Snyk), Secret Scanning (Gitleaks), DAST (OWASP ZAP), Assinatura de Imagens (Cosign), SBOM e SLSA Provenance.

---

## 🏛️ Trilha de Projetos Práticos de CI/CD Nível Sênior (20 Projetos Reais)

| # | Projeto | Título / Foco de Engenharia | Ferramentas Chave |
|---|---|---|---|
| **01** | [`01-gitleaks-secret-scanning-pre-receive-gate/`](./01-gitleaks-secret-scanning-pre-receive-gate) | **Scanner Rigoroso de Segredos com Gitleaks em Hook de CI e Pre-Commit** | `gitleaks, git, bash` |
| **02** | [`02-semgrep-custom-sast-rules-pipeline/`](./02-semgrep-custom-sast-rules-pipeline) | **Análise Estática de Segurança (SAST) com Semgrep e Regras Corporativas Customizadas** | `semgrep, jq, sarif-tools` |
| **03** | [`03-trivy-container-filesystem-sca-scanner/`](./03-trivy-container-filesystem-sca-scanner) | **Varredura Completa de Vulnerabilidades (SCA) em Imagens de Containers com Trivy** | `trivy, jq, docker` |
| **04** | [`04-cosign-sigstore-image-signing-pipeline/`](./04-cosign-sigstore-image-signing-pipeline) | **Assinatura Criptográfica de Imagens de Containers com Cosign (Sigstore) e Keyless Signing** | `cosign, crane, sigstore` |
| **05** | [`05-sbom-syft-cyclonedx-generation-attestation/`](./05-sbom-syft-cyclonedx-generation-attestation) | **Geração e Atestado de Software Bill of Materials (SBOM) com Syft e CycloneDX** | `syft, cosign, cyclonedx-cli` |
| **06** | [`06-owasp-zap-automated-dast-baseline-scan/`](./06-owasp-zap-automated-dast-baseline-scan) | **Varredura Dinâmica de Segurança (DAST) em Aplicações Web com OWASP ZAP** | `zaproxy, docker, curl` |
| **07** | [`07-checkov-tfsec-infrastructure-as-code-gate/`](./07-checkov-tfsec-infrastructure-as-code-gate) | **Auditoria de Segurança em Infraestrutura como Código (IaC) com Checkov e tfsec** | `checkov, tfsec, terraform` |
| **08** | [`08-falco-runtime-security-rule-testing-ci/`](./08-falco-runtime-security-rule-testing-ci) | **Validação e Testes de Regras de Segurança em Runtime do Falco em CI** | `falco, docker, jq` |
| **09** | [`09-dependency-track-continuous-vulnerability-sync/`](./09-dependency-track-continuous-vulnerability-sync) | **Integração Contínua com OWASP Dependency-Track para Monitoramento de Riscos de CVEs** | `curl, jq, dependency-track` |
| **10** | [`10-rekor-transparency-log-verification/`](./10-rekor-transparency-log-verification) | **Verificação de Inclusão no Log de Transparência Criptográfico Rekor (Sigstore)** | `rekor-cli, jq, curl` |
| **11** | [`11-open-policy-agent-conftest-pipeline-gate/`](./11-open-policy-agent-conftest-pipeline-gate) | **Portão de Políticas Corporativas de Segurança com Open Policy Agent (OPA) e Conftest** | `conftest, opa, yaml` |
| **12** | [`12-npm-audit-pip-audit-remediation-gate/`](./12-npm-audit-pip-audit-remediation-gate) | **Portão Automatizado de Auditoria de Pacotes de Aplicação (npm audit / pip-audit)** | `npm-audit, pip-audit, dotnet-list-package` |
| **13** | [`13-slsa-verifier-provenance-gate/`](./13-slsa-verifier-provenance-gate) | **Validador e Portão de Proveniência SLSA para Binários e Imagens de Produção** | `slsa-verifier, cosign` |
| **14** | [`14-defensive-container-lint-hadolint/`](./14-defensive-container-lint-hadolint) | **Linting Defensivo de Dockerfiles com Hadolint contra Más Práticas de Segurança** | `hadolint, docker` |
| **15** | [`15-trufflehog-deep-git-history-scanner/`](./15-trufflehog-deep-git-history-scanner) | **Varredura Profunda de Todo o Histórico Git com TruffleHog para Chaves Esquecidas** | `trufflehog, git, bash` |
| **16** | [`16-grype-vulnerability-reporter-html/`](./16-grype-vulnerability-reporter-html) | **Gerador de Relatórios Detalhados de Vulnerabilidades com Grype e Modelos HTML** | `grype, syft, template-engine` |
| **17** | [`17-security-champion-slack-bot-alerter/`](./17-security-champion-slack-bot-alerter) | **Bot Notificador de Incidentes de Segurança de Pipeline para Security Champions no Slack** | `curl, jq, slack-api` |
| **18** | [`18-kube-linter-k8s-security-gate/`](./18-kube-linter-k8s-security-gate) | **Auditor de Manifestos Kubernetes com KubeLinter contra Más Configurações de Segurança** | `kube-linter, yq` |
| **19** | [`19-bearer-token-saas-api-secret-rotator/`](./19-bearer-token-saas-api-secret-rotator) | **Validador e Rotacionador de Segredos e Tokens de Integração SaaS no CI** | `curl, jq, date, openssl` |
| **20** | [`20-devsecops-maturity-compliance-reporter/`](./20-devsecops-maturity-compliance-reporter) | **Gerador de Relatório de Conformidade e Maturidade DevSecOps para Auditorias Externas** | `tar, sha256sum, gpg, jq` |
