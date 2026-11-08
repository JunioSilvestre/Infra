# 🐍 Engenharia Python para Linux, DevOps, SRE & Cloud

<div align="center">

![Python Version](https://img.shields.io/badge/Python-3.12%2B-blue?logo=python&logoColor=white)
![Platform](https://img.shields.io/badge/Platform-Linux%20%2F%20Ubuntu-orange?logo=linux&logoColor=white)
![Architecture](https://img.shields.io/badge/Architecture-Modular%20Engineering-success)
![Tooling](https://img.shields.io/badge/Package%20Manager-uv%20%7C%20pip-purple)
![Code Quality](https://img.shields.io/badge/Quality-Ruff%20%7C%20Mypy%20%7C%20Pytest-green)

<p align="center">
  <b>Repositório de engenharia e operações com Python aplicado a infraestrutura, redes, automação, segurança, dados e confiabilidade de sistemas.</b>
</p>

</div>

---

## 📌 Visão Geral

Este repositório reúne implementações práticas, scripts e arquiteturas baseadas em Python para **engenharia de sistemas Linux, DevOps, Cloud e SRE**. 

A arquitetura do projeto adota uma abordagem modular e isolada: cada diretório representa um domínio técnico especializado, permitindo que cada projeto ou experimento possua seu próprio ciclo de dependências sem inflar o ambiente global do servidor.

---

## 🏗️ Matriz Arquitetural dos 14 Pilares

| # | Domínio | Foco Técnico | Tecnologias & Bibliotecas Chave |
|---|---|---|---|
| **01** | [`01-automacao`](./01-automacao) | Automação de tarefas operacionais, arquivos e processos locais/remotos | `pathlib`, `shutil`, `subprocess`, `psutil`, `Paramiko`, `APScheduler` |
| **02** | [`02-linux-administracao`](./02-linux-administracao) | Gerenciamento de discos, systemd, journald, usuários e pacotes no host | `psutil`, `systemd`, `pwd`, `grp`, `apt/dpkg` |
| **03** | [`03-redes-e-protocolos`](./03-redes-e-protocolos) | Diagnóstico, sockets TCP/UDP, DNS, firewall, monitoramento de conectividade | `socket`, `scapy`, `dnspython`, `netifaces`, `requests` |
| **04** | [`04-seguranca`](./04-seguranca) | Hardening, auditoria de integridade, TLS/certificados, permissões e análise de logs | `cryptography`, `hashlib`, `ssl`, `auditd`, `AppArmor` |
| **05** | [`05-devops-e-ci-cd`](./05-devops-e-ci-cd) | Automação de pipelines, validação de YAML, integração com APIs GitHub/GitLab | `PyYAML`, `Jinja2`, `python-gitlab`, `requests`, `GitPython` |
| **06** | [`06-cloud-e-infraestrutura`](./06-cloud-e-infraestrutura) | Provisionamento cloud, inventário de ativos, análise de custos e integração IaC | `boto3`, `azure-mgmt-*`, `python-hcl2`, `pydantic` |
| **07** | [`07-containers-e-kubernetes`](./07-containers-e-kubernetes) | Automação Docker Engine, Kubernetes API, health-checks e operadores customizados | `docker`, `kubernetes`, `kopf`, `requests` |
| **08** | [`08-monitoramento-e-observabilidade`](./08-monitoramento-e-observabilidade) | Coleta de métricas do SO, logs estruturados, integração Prometheus e Grafana | `prometheus-client`, `structlog`, `psutil`, `requests` |
| **09** | [`09-engenharia-de-dados`](./09-engenharia-de-dados) | Pipelines ETL/ELT, processamento tabular e colunar, bancos SQL e orquestração | `pandas`, `polars`, `pyarrow`, `SQLAlchemy`, `Prefect`, `pandera` |
| **10** | [`10-arquitetura-e-sre`](./10-arquitetura-e-sre) | Padrões de resiliência (Circuit Breakers, Retries), SLAs/SLOs e Capacity Planning | `tenacity`, `pybreaker`, `networkx`, `pandas`, `pydantic` |
| **11** | [`11-apis-e-backend`](./11-apis-e-backend) | APIs de alta performance, microserviços, autenticação JWT e mensageria | `FastAPI`, `Uvicorn`, `SQLAlchemy`, `Alembic`, `Celery`, `Redis` |
| **12** | [`12-scripting-e-cli`](./12-scripting-e-cli) | Criação de utilitários de terminal e CLIs profissionais para sysadmins | `Typer`, `Click`, `Rich`, `Argparse`, `pydantic-settings` |
| **13** | [`13-testes-e-qualidade`](./13-testes-e-qualidade) | Testes unitários, de integração, linters, checagem estática de tipos e SAST | `pytest`, `testcontainers`, `ruff`, `mypy`, `bandit`, `pip-audit` |
| **14** | [`14-projetos-integradores`](./14-projetos-integradores) | Soluções end-to-end completas unindo backend, monitoramento e infraestrutura | Soluções Full-Stack de Engenharia & Plataformas de Operação |

---

## 📂 Organização do Repositório

```text
Python/
├── .gitignore                          # Ignora caches, ambientes virtuais e segredos
├── README.md                           # Documentação central do projeto
├── scripts/                            # Scripts auxiliares de setup e manutenção
│   └── criar_estrutura_python_linux.sh
├── 01-automacao/                       # Automação local, remota, backups e rotinas
├── 02-linux-administracao/             # Gestão de sistema, discos, serviços e logs
├── 03-redes-e-protocolos/              # Sockets, conectividade, diagnóstico e protocolos
├── 04-seguranca/                       # Hardening, criptografia, auditoria e TLS
├── 05-devops-e-ci-cd/                  # Pipelines, CI/CD, Git e automação de deploys
├── 06-cloud-e-infraestrutura/          # AWS, Azure, IaC e inventário de recursos
├── 07-containers-e-kubernetes/         # Docker, K8s API e operadores em Python
├── 08-monitoramento-e-observabilidade/ # Métricas, logs, alertas e Prometheus
├── 09-engenharia-de-dados/             # Ingestão, ETL, Dataframes e Bancos SQL
├── 10-arquitetura-e-sre/               # Resiliência, confiabilidade, SLOs e DR
├── 11-apis-e-backend/                  # FastAPI, Flask, ORM e filas assíncronas
├── 12-scripting-e-cli/                 # Interfaces de linha de comando com Rich/Typer
├── 13-testes-e-qualidade/              # Testes unitários, mocks, Ruff e Mypy
└── 14-projetos-integradores/           # Aplicações integradas de ponta a ponta
```

---

## 🚀 Como Começar

### 1. Isolamento de Dependências (Regra de Ouro)

> [!IMPORTANT]
> **Nunca instale dependências globalmente no sistema.**
> Cada subprojeto ou item específico deve ter seu próprio ambiente virtual ou isolamento de dependências.

### 2. Criando o Ambiente Virtual

Você pode utilizar o gerenciador padrão do Python (`venv`) ou o **`uv`** (já instalado no servidor para máxima velocidade):

#### Opção A: Usando `uv` (Recomendado - Ultrarrápido)
```bash
# Navegue até a pasta do projeto desejado
cd 01-automacao/arquivos-e-diretorios

# Crie o ambiente virtual
uv venv .venv

# Ative o ambiente
source .venv/bin/activate

# Instale apenas os pacotes necessários
uv pip install -r requirements.txt
```

#### Opção B: Usando `venv` padrão
```bash
# Navegue até a pasta do projeto
cd 01-automacao/arquivos-e-diretorios

# Crie o ambiente virtual
python3 -m venv .venv

# Ative o ambiente
source .venv/bin/activate

# Atualize o pip e instale as dependências
python -m pip install --upgrade pip
pip install -r requirements.txt
```

---

## 🛡️ Padrões de Desenvolvimento e Engenharia

1. **Biblioteca Padrão em Primeiro Lugar:**
   - Recursos como manipulação de caminhos (`pathlib`), arquivos (`shutil`), hashing (`hashlib`) e execução de processos (`subprocess`) fazem parte da biblioteca nativa do Python e dispensam pacotes externos.
2. **Gerenciamento de Segredos e Configurações:**
   - Nunca versione senhas, tokens ou certificados no Git.
   - Utilize arquivos `.env` para desenvolvimento local e crie sempre um `.env.example` sem dados sensíveis.
3. **Qualidade de Código e Tipagem:**
   - **Formatação e Lint:** Adotamos o [`ruff`](https://github.com/astral-sh/ruff) para linting e formatação ultrarrápidos.
   - **Type Hints:** Use anotações de tipo em todas as funções públicas e valide com `mypy`.
   - **Testes:** Escreva testes com `pytest` para garantir reproducibilidade.

---

## 👤 Autor e Manutenção

- **Mantenedor:** Junio Silvestre
- **Repositório:** [https://github.com/JunioSilvestre/Python](https://github.com/JunioSilvestre/Python)
- **Licença:** MIT (ou proprietária conforme definição do projeto)
