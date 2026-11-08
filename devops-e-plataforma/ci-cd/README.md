# 🚀 Engenharia de CI/CD, DevSecOps & Automação de Deploys

<div align="center">

![Domain](https://img.shields.io/badge/Domain-CI%2FCD-GitHub%20Actions%20%7C%20GitLab%20CI%20%7C%20GitOps-blue)
![Platform](https://img.shields.io/badge/Architecture-Production--Grade-success)
![Quality](https://img.shields.io/badge/Standard-Enterprise%20Ready-blue)

<p align="center">
  <b>Repositório abrangente de pipelines modernos de Integração e Entrega Contínua (CI/CD): GitHub Actions corporativo, GitLab CI/CD, estratégias avançadas de deploy (Blue/Green, Canary, Rolling), DevSecOps (SAST/DAST/SCA/Cosign), Runners auto-hospedados e integração GitOps.</b>
</p>

</div>

---

## 📌 Visão Geral

Este repositório reúne arquiteturas, modelos de pipelines e padrões de engenharia para **Integração e Entrega Contínua (CI/CD)** corporativa, cobrindo o ecossistema do **GitHub Actions**, **GitLab CI/CD**, esteiras de **DevSecOps** (SAST/DAST/SCA), estratégias de deploy sem downtime e integração nativa com operadores **GitOps**.

---

## 🏗️ Matriz Arquitetural dos 10 Módulos

| # | Módulo | Foco Técnico | Subáreas em Destaque |
|---|---|---|---|
| **01** | [`01-fundamentos-ci-cd`](./01-fundamentos-ci-cd) | Fundamentos de CI/CD e Ciclo de Vida | `conceitos-e-ciclo-de-vida`, `runners-e-agentes` |
| **02** | [`02-github-actions`](./02-github-actions) | GitHub Actions Corporativo | `workflows-e-sintaxe`, `runners-auto-hospedados` |
| **03** | [`03-gitlab-ci`](./03-gitlab-ci) | GitLab CI/CD | `gitlab-ci-yml`, `environments-e-deploy` |
| **04** | [`04-testes-e-qualidade`](./04-testes-e-qualidade) | Testes Automatizados e Portões de Qualidade | `testes-automatizados`, `linters-e-formatacao` |
| **05** | [`05-seguranca-em-pipeline-devsecops`](./05-seguranca-em-pipeline-devsecops) | DevSecOps & Segurança na Cadeia de Suprimentos | `sast`, `assinatura-e-sbom` |
| **06** | [`06-build-e-gerenciamento-de-artefatos`](./06-build-e-gerenciamento-de-artefatos) | Builds Otimizados e Gestão de Artefatos | `imagens-docker-sem-root`, `helm-charts-packaging` |
| **07** | [`07-estrategias-de-deploy`](./07-estrategias-de-deploy) | Estratégias Avançadas de Implantação | `rolling-updates`, `feature-flags` |
| **08** | [`08-gitops-e-cd-moderno`](./08-gitops-e-cd-moderno) | Integração GitOps & Entrega Contínua | `argocd-integration`, `notificacoes-e-auditoria` |
| **09** | [`09-templates-reutilizaveis`](./09-templates-reutilizaveis) | Bibliotecas de Pipelines e Templates Corporativos | `templates-python`, `templates-shell-linux` |
| **10** | [`10-laboratorios-e-projetos-integradores`](./10-laboratorios-e-projetos-integradores) | Laboratórios Práticos e Projetos Integradores | `pipeline-multi-cloud-completo`, `devsecops-supply-chain-security` |

---

## 🛡️ Pilares de Segurança em CI/CD (DevSecOps)

1. **Zero Long-Lived Credentials:** Autenticação com provedores de nuvem utilizando OpenID Connect (OIDC) com tokens efêmeros.
2. **Shift-Left Security:** Varredura estática de vulnerabilidades e segredos (Gitleaks, Trivy, SonarQube) diretamente no pull request.
3. **Imutabilidade e Assinatura:** Imagens de container assinadas via Cosign/Sigstore com geração obrigatória de SBOM.

---

## 👤 Autor e Manutenção

- **Mantenedor:** Junio Silvestre
- **Repositório:** [https://github.com/JunioSilvestre/CI-CD.git](https://github.com/JunioSilvestre/CI-CD.git)
