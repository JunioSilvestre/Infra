# 🏛️ Infraestrutura, Cloud & SRE Monorepo

Repositório unificado de engenharia de infraestrutura, automação de sistemas, cloud computing, observabilidade e engenharia de plataforma.

---

## 📂 Arquitetura do Repositório

```text
infra/
├── README.md                          # Documentação principal
├── Makefile                           # Automações de desenvolvimento (setup, lint, fmt)
├── .gitattributes                     # Normalização de quebras de linha (LF) Multi-SO
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
│   ├── bash/                          # Shell scripting corporativo (ex: sec-edgar-monitor)
│   └── python/                        # CLI tooling, cloud SDKs e DevOps scripts
│
└── host-provisioning/                 # Provisionamento de Hosts Locais
    ├── configurar_compartilhamento.sh # Configuração de compartilhamentos de rede
    ├── setup_postgresql.sh            # Setup de PostgreSQL local
    └── test_pg_connection.py          # Verificação de conectividade
```

---

## 💻 Guia de Configuração por Sistema Operacional (Multi-Dev)

Este repositório foi projetado com `.gitattributes` e `.editorconfig` para permitir colaboração perfeita entre desenvolvedores em **Linux**, **macOS** e **Windows**.

### 🐧 Linux (Ubuntu / Debian / RHEL / Fedora)
```bash
# 1. Dependências recomendadas
sudo apt update && sudo apt install -y git curl jq make python3-pip shellcheck

# 2. Clonar e configurar
git clone https://github.com/JunioSilvestre/Infra.git
cd Infra
make setup
```

### 🍏 macOS (Apple Silicon & Intel)
```bash
# 1. Dependências via Homebrew
brew install git curl jq make pre-commit shellcheck terraform

# 2. Clonar e configurar
git clone https://github.com/JunioSilvestre/Infra.git
cd Infra
make setup
```

### 🪟 Windows (via WSL2 — Recomendado)
Em ambientes corporativos de infraestrutura, desenvolvedores Windows devem usar o **WSL2 (Ubuntu)** para evitar incompatibilidades de kernel, permissões POSIX e scripts bash:
1. Abra o terminal do WSL2 (Ubuntu).
2. Configure o Git para preservar `LF`:
   ```bash
   git config --global core.autocrlf input
   ```
3. Clone o projeto dentro do filesystem do Linux (ex: `~/Projetos/Infra`), **não** dentro de `/mnt/c/`, para máxima performance de I/O e compatibilidade com permissões Unix:
   ```bash
   git clone https://github.com/JunioSilvestre/Infra.git
   cd Infra
   make setup
   ```

---

## 🚀 Comandos Rápidos do Makefile

| Comando | Descrição |
|---|---|
| `make help` | Exibe todos os comandos disponíveis |
| `make setup` | Configura hooks de pre-commit e permissões locais |
| `make lint` | Executa todos os linters (ShellCheck, YAML, Python) |
| `make fmt` | Formata automaticamente Terraform e Python |
| `make test-sec-monitor` | Executa validação de sintaxe e ajuda do monitor SEC EDGAR |

---

## 📋 Convenção de Commits

Utilizamos o padrão **Conventional Commits**:
- `feat(iac): add azure aks module`
- `fix(bash): resolve dns timeout handling`
- `docs(sre): update slo error budget policy`
- `refactor(ci-cd): optimize gitlab-ci runner stages`
