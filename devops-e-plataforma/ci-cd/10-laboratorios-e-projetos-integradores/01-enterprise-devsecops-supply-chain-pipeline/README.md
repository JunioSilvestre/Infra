# 01 — Pipeline Completo de DevSecOps e Segurança de Cadeia de Suprimentos (SLSA L3)

## 🏢 Cenário de Produção e Vida Real
Esteira de missão crítica para aplicações financeiras e de saúde integrando todos os requisitos de segurança modernos.

### ⚠️ O Problema Real
Vulnerabilidades exploradas na cadeia de suprimentos de software sem rastreabilidade de código a produção.

## 🚀 Arquitetura e Engenharia de CI/CD
Esteira integrada fim a fim: Git pre-push hook (Gitleaks) -> SAST (Semgrep) -> SCA (Trivy) -> Multi-stage build rootless -> SBOM (Syft) -> Assinatura Cosign (Keyless) -> Atestado SLSA -> Deploy GitOps com verificação de assinatura.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`gitleaks, semgrep, trivy, syft, cosign, slsa-verifier, argocd`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
./run_full_devsecops_pipeline.sh --repo my-corp/core-api --target production
```
