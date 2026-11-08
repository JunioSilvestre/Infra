# 02-backstage — Spotify Backstage & Catálogo de Software

Portal de desenvolvedor open source da CNCF: Service Catalog, Software Templates e ecossistema de plugins.

## 📂 Subáreas
- [`software-catalog/`](./software-catalog) — **Stack:** `catalog-info.yaml, entities (Component, API, System)` — Mapeamento das dependências, proprietários (owners) e contratos de todos os serviços da empresa.
- [`catalog-templates/`](./catalog-templates) — **Stack:** `Scaffolder templates, automação de novos repositórios` — Modelos padronizados para criação de novos microserviços com CI/CD, testes e infraestrutura pronta.
- [`plugins/`](./plugins) — **Stack:** `TechDocs, Kubernetes plugin, ArgoCD plugin` — Extensões que integram métricas, status de deploys e documentação no portal do desenvolvedor.

## 📌 Guia de Execução & Padrões
- Todas as implementações desta pasta seguem os padrões de produção estabelecidos para Platform-Engineering.
- Consulte os READMEs de cada subárea para detalhes sobre ferramentas e boas práticas.
