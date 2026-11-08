# 07-seguranca-e-governanca — Segurança, Governança e Policy as Code

Políticas preventivas automatizadas, gestão de segredos centralizada e RBAC empresarial.

## 📂 Subáreas
- [`policy-as-code/`](./policy-as-code) — **Stack:** `OPA (Open Policy Agent), Conftest, Kyverno` — Validação estática de manifests e código IaC antes de aplicar em produção.
- [`gestao-secrets/`](./gestao-secrets) — **Stack:** `HashiCorp Vault, External Secrets Operator (ESO)` — Sincronização segura de segredos entre cofres corporativos e pods do Kubernetes.
- [`rbac/`](./rbac) — **Stack:** `Princípio do menor privilégio, SSO, grupos OIDC` — Mapeamento de permissões entre equipes de engenharia e recursos de cloud/cluster.

## 📌 Guia de Execução & Padrões
- Todas as implementações desta pasta seguem os padrões de produção estabelecidos para Platform-Engineering.
- Consulte os READMEs de cada subárea para detalhes sobre ferramentas e boas práticas.
