# 🐳 Containers, Orquestração com Kubernetes & Helm

<div align="center">

![Domain](https://img.shields.io/badge/Domain-Containers-Docker%20%7C%20Kubernetes%20%7C%20Helm-blue)
![Platform](https://img.shields.io/badge/Architecture-Production--Grade-success)
![Quality](https://img.shields.io/badge/Standard-Enterprise%20Ready-blue)

<p align="center">
  <b>Repositório completo de engenharia de containers e orquestração: Dockerfile otimizado, Compose, arquitetura de clusters Kubernetes, objetos nativos, Helm Charts, segurança e deploys de produção.</b>
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
| **01** | [`01-docker`](./01-docker) | Docker Engine & Construção de Containers | `imagens-containers`, `seguranca` |
| **02** | [`02-kubernetes`](./02-kubernetes) | Arquitetura e Recursos Nativos do Kubernetes | `pods-deployments`, `network-policies` |
| **03** | [`03-helm`](./03-helm) | Helm & Gerenciamento de Pacotes no Kubernetes | `charts`, `values-versionamento` |
| **04** | [`04-deployments`](./04-deployments) | Estratégias de Implantação e Ciclo de Vida | `rolling-updates`, `health-checks` |
| **05** | [`05-registry`](./05-registry) | Registries de Imagens & Ciclo de Vida de Artefatos | `build-push`, `versionamento` |
| **06** | [`06-seguranca`](./06-seguranca) | Segurança e Governança de Clusters | `hardening`, `admission-policies` |
| **07** | [`07-laboratorios`](./07-laboratorios) | Laboratórios Práticos e Ambientes Locais | `k3s-kind-homelab`, `service-mesh-istio` |
| **08** | [`08-projetos-integradores`](./08-projetos-integradores) | Projetos Integradores de Produção | `producao-ha-cluster`, `cicd-para-kubernetes` |

---

## 🛡️ Padrões de Engenharia & Segurança

1. **Abordagem Declarativa:** Toda configuração de infraestrutura, cluster ou serviço deve ser versionada como código.
2. **Segurança em Primeiro Lugar:** Nenhum segredo, certificado ou credencial real deve ser commitado no repositório.
3. **Reproducibilidade:** Ambientes devem ser facilmente reconstituídos via scripts ou manifests declarativos.

---

## 👤 Autor e Manutenção

- **Mantenedor:** Junio Silvestre
- **Repositório:** [https://github.com/JunioSilvestre/Docker-Kubernetes.git](https://github.com/JunioSilvestre/Docker-Kubernetes.git)
