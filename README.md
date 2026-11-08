# 🏛️ Infraestrutura, Cloud & SRE Monorepo

Repositório unificado de engenharia de infraestrutura, automação de sistemas, cloud computing, observabilidade e engenharia de plataforma.

---

## 📂 Arquitetura do Repositório

```text
infra/
├── README.md                          # Documentação principal
├── .gitignore                         # Regras de exclusão global
├── .editorconfig                      # Padronização de formatação
├── .pre-commit-config.yaml            # Linters e checagens de qualidade
├── docs/                              # Guias e diagramas arquiteturais
│   └── architecture.md
│
├── cloud-e-iac/                       # Infraestrutura como Código
│   └── terraform/                     # Módulos, AWS, Azure, GCP, State
│
├── sistemas-e-containers/             # Plataforma e Runtime
│   ├── linux/                         # Kernel, redes, storage, hardening
│   └── docker-kubernetes/             # Containers, Helm, K8s manifests
│
├── devops-e-plataforma/               # Entrega Contínua e Plataforma
│   ├── ci-cd/                         # GitHub Actions, GitLab CI, DevSecOps
│   └── platform-engineering/          # IDP, Backstage, GitOps, DevEx
│
├── observabilidade-e-sre/             # Confiabilidade e Monitoramento
│   ├── 01-prometheus/                 # Coleta de métricas e alertas
│   ├── 02-grafana/                    # Dashboards operacionais
│   ├── 03-logs/                       # Centralização e auditoria
│   ├── 04-tracing/                    # OpenTelemetry e traces distribuídos
│   └── 05-sre/                        # SLI/SLO, error budgets e runbooks
│
├── automacao-e-scripting/             # Automação de Sistemas
│   ├── bash/                          # Shell scripting corporativo
│   └── python/                        # CLI tooling, cloud SDKs e DevOps scripts
│
└── host-provisioning/                 # Provisionamento de Hosts Locais
    ├── configurar_compartilhamento.sh # Configuração de compartilhamentos de rede
    ├── setup_postgresql.sh            # Setup de PostgreSQL local
    └── test_pg_connection.py          # Verificação de conectividade
```

---

## 🛠️ Tecnologias & Ferramental

| Domínio | Ferramentas Chave |
|---|---|
| **IaC & Nuvem** | Terraform, OpenTofu, AWS, Azure, GCP |
| **Sistemas & Containers** | Linux (Ubuntu/Debian, RHEL), Docker, Kubernetes, Helm |
| **DevOps & CI/CD** | GitHub Actions, GitLab CI, ArgoCD, Flux |
| **Observabilidade & SRE** | Prometheus, Grafana, OpenTelemetry, Loki, Jaeger |
| **Automação** | Bash puro (POSIX/Bash 4+), Python (Ruff, Poetry/UV) |

---

## 🚀 Como Contribuir e Padrões de Código

1. Instale o `pre-commit`:
   ```bash
   pip install pre-commit
   pre-commit install
   ```
2. Utilize mensagens de commit no padrão **Conventional Commits**:
   - `feat(iac): add azure aks module`
   - `fix(bash): resolve dns timeout handling`
   - `docs(sre): update slo error budget policy`
