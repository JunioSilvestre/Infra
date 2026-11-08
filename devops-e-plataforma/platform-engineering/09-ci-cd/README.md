# 09-ci-cd — Pipelines Padronizados de Integração e Entrega

Workflows reutilizáveis para GitHub Actions e GitLab CI garantindo consistência em toda a empresa.

## 📂 Subáreas
- [`pipelines/`](./pipelines) — **Stack:** `Shared Workflows, CI templates corporativos` — Pipelines centralizados contendo etapas obrigatórias de lint, build, teste e scan de segurança.
- [`deployment/`](./deployment) — **Stack:** `Promoção contínua de ambientes via commits GitOps` — Disparo de atualizações de manifests para o ArgoCD sincronizar a nova imagem no cluster.

## 📌 Guia de Execução & Padrões
- Todas as implementações desta pasta seguem os padrões de produção estabelecidos para Platform-Engineering.
- Consulte os READMEs de cada subárea para detalhes sobre ferramentas e boas práticas.
