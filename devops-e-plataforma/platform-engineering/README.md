# 🛠️ Engenharia de Plataforma (Platform Engineering) & IDP

<div align="center">

![Domain](https://img.shields.io/badge/Domain-Platform%20Engineering-Internal%20Developer%20Platform-purple)
![Platform](https://img.shields.io/badge/Architecture-Production--Grade-success)
![Quality](https://img.shields.io/badge/Standard-Enterprise%20Ready-blue)

<p align="center">
  <b>Arquitetura e implementação de Plataformas Internas de Desenvolvimento (IDP): autosserviço para desenvolvedores, Golden Paths, Backstage, GitOps com ArgoCD, IaC com Terraform/Ansible, Governança e Developer Experience (DevEx).</b>
</p>

</div>

---

## 📌 Visão Geral

Este repositório faz parte da suíte de competências em **Linux Engineering, Cloud e Platform Engineering**, estruturado para refletir a maturidade e a profundidade técnica exigidas no mercado internacional de engenharia de software e infraestrutura.

A organização adota uma abordagem modular e declarativa, onde cada módulo isola um domínio específico de conhecimento prático e pronto para produção.

---

## 🏗️ Matriz Arquitetural dos Módulos

| # | Módulo | Foco Técnico | Subáreas em Destaque |
|---|---|---|---|
| **01** | [`01-internal-developer-platform`](./01-internal-developer-platform) | Internal Developer Platform (IDP) & Arquitetura | `arquitetura`, `autosservico` |
| **02** | [`02-backstage`](./02-backstage) | Spotify Backstage & Catálogo de Software | `software-catalog`, `plugins` |
| **03** | [`03-gitops`](./03-gitops) | GitOps com ArgoCD e Flux | `argocd`, `configuracao-declarativa` |
| **04** | [`04-infrastructure-as-code`](./04-infrastructure-as-code) | Infraestrutura como Código na Plataforma | `terraform`, `modulos` |
| **05** | [`05-developer-experience`](./05-developer-experience) | Developer Experience (DevEx) & Golden Paths | `golden-paths`, `documentacao` |
| **06** | [`06-platform-apis`](./06-platform-apis) | APIs de Plataforma & Orquestração de Recursos | `provisionamento`, `automacao` |
| **07** | [`07-seguranca-e-governanca`](./07-seguranca-e-governanca) | Segurança, Governança e Policy as Code | `policy-as-code`, `rbac` |
| **08** | [`08-observabilidade`](./08-observabilidade) | Telemetria e Métricas da Plataforma | `metricas-logs-traces`, `slo` |
| **09** | [`09-ci-cd`](./09-ci-cd) | Pipelines Padronizados de Integração e Entrega | `pipelines`, `deployment` |
| **10** | [`10-laboratorios`](./10-laboratorios) | Laboratórios Práticos de Engenharia de Plataforma | `idp-local-com-backstage`, `crossplane-k8s-infra` |
| **11** | [`11-projetos-integradores`](./11-projetos-integradores) | Projetos Integradores de Plataforma Corporativa | `internal-developer-platform-end-to-end`, `golden-path-microservico` |

---

## 🛡️ Padrões de Engenharia & Segurança

1. **Abordagem Declarativa:** Toda configuração de infraestrutura, cluster ou serviço deve ser versionada como código.
2. **Segurança em Primeiro Lugar:** Nenhum segredo, certificado ou credencial real deve ser commitado no repositório.
3. **Reproducibilidade:** Ambientes devem ser facilmente reconstituídos via scripts ou manifests declarativos.

---

## 👤 Autor e Manutenção

- **Mantenedor:** Junio Silvestre
- **Repositório:** [https://github.com/JunioSilvestre/Platform-Engineering.git](https://github.com/JunioSilvestre/Platform-Engineering.git)
