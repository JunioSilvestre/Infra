# 📊 Observabilidade, Confiabilidade de Sistemas (SRE) & Telemetria

<div align="center">

![Domain](https://img.shields.io/badge/Domain-Observability-Prometheus%20%7C%20Grafana%20%7C%20OTel-blue)
![Platform](https://img.shields.io/badge/Architecture-Production--Grade-success)
![Quality](https://img.shields.io/badge/Standard-Enterprise%20Ready-blue)

<p align="center">
  <b>Implementação prática dos três pilares da observabilidade (Métricas, Logs e Traces) com stack Prometheus, Grafana, OpenTelemetry, Loki e práticas avançadas de SRE (SLIs, SLOs, Error Budgets e Resiliência).</b>
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
| **01** | [`01-prometheus`](./01-prometheus) | Prometheus & Coleta de Métricas | `instalacao`, `alertmanager` |
| **02** | [`02-grafana`](./02-grafana) | Grafana & Visualização de Dados | `datasources`, `alertas` |
| **03** | [`03-logs`](./03-logs) | Gestão Centralizada de Logs | `loki`, `elasticsearch-opensearch` |
| **04** | [`04-tracing`](./04-tracing) | Distributed Tracing & OpenTelemetry | `opentelemetry`, `jaeger-tempo` |
| **05** | [`05-sre`](./05-sre) | Site Reliability Engineering (SRE) | `sli-slo-sla`, `postmortems` |
| **06** | [`06-confiabilidade`](./06-confiabilidade) | Engenharia de Confiabilidade e Resiliência | `availability`, `disaster-recovery` |
| **07** | [`07-automacao`](./07-automacao) | Automação Operacional e Runbooks | `health-checks`, `alertas-runbooks` |
| **08** | [`08-laboratorios`](./08-laboratorios) | Laboratórios Práticos de Observabilidade | `stack-lgtm`, `synthetic-monitoring` |
| **09** | [`09-projetos-integradores`](./09-projetos-integradores) | Projetos Integradores Completos de SRE | `plataforma-observabilidade-completa`, `slos-e-alertas-automacao` |

---

## 🛡️ Padrões de Engenharia & Segurança

1. **Abordagem Declarativa:** Toda configuração de infraestrutura, cluster ou serviço deve ser versionada como código.
2. **Segurança em Primeiro Lugar:** Nenhum segredo, certificado ou credencial real deve ser commitado no repositório.
3. **Reproducibilidade:** Ambientes devem ser facilmente reconstituídos via scripts ou manifests declarativos.

---

## 👤 Autor e Manutenção

- **Mantenedor:** Junio Silvestre
- **Repositório:** [https://github.com/JunioSilvestre/Observability-SRE.git](https://github.com/JunioSilvestre/Observability-SRE.git)
