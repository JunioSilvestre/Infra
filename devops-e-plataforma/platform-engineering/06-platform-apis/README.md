# 06-platform-apis — APIs de Plataforma & Orquestração de Recursos

Exposição de endpoints para provisionamento dinâmico e integração com provedores de nuvem.

## 📂 Subáreas
- [`provisionamento/`](./provisionamento) — **Stack:** `APIs de autosserviço (FastAPI / Crossplane)` — Camada de abstração que recebe requisições simples e aciona provedores de infraestrutura.
- [`integracoes/`](./integracoes) — **Stack:** `Webhooks, comunicação com Jira, Slack, PagerDuty` — Notificações automáticas sobre criações de recursos e status de pipelines.
- [`automacao/`](./automacao) — **Stack:** `Event-driven infrastructure workflows` — Gatilhos automáticos para redimensionamento, expiração de recursos e limpeza de ambientes de teste.

## 📌 Guia de Execução & Padrões
- Todas as implementações desta pasta seguem os padrões de produção estabelecidos para Platform-Engineering.
- Consulte os READMEs de cada subárea para detalhes sobre ferramentas e boas práticas.
