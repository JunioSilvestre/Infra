# 03-gitops — GitOps com ArgoCD e Flux

Gerenciamento contínuo e declarativo do estado do cluster a partir do Git como única fonte de verdade.

## 📂 Subáreas
- [`argocd/`](./argocd) — **Stack:** `Application CRD, App of Apps pattern, auto-sync` — Implementação do controlador GitOps líder de mercado com sincronização contínua.
- [`flux/`](./flux) — **Stack:** `Flux v2, GitRepository, Kustomization CRDs` — Alternativa modular e nativa para automação GitOps no Kubernetes.
- [`configuracao-declarativa/`](./configuracao-declarativa) — **Stack:** `Kustomize overlays (dev, prod), helm-values` — Segregação estrita entre código-fonte da aplicação e repositórios de manifesto de infraestrutura.

## 📌 Guia de Execução & Padrões
- Todas as implementações desta pasta seguem os padrões de produção estabelecidos para Platform-Engineering.
- Consulte os READMEs de cada subárea para detalhes sobre ferramentas e boas práticas.
