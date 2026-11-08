# 🐚 Engenharia Shell & Bash para Linux, DevOps e SRE

<div align="center">

![Shell](https://img.shields.io/badge/Language-Bash%205.x-black?logo=gnubash&logoColor=white)
![Platform](https://img.shields.io/badge/Platform-Linux%20%2F%20POSIX-orange?logo=linux&logoColor=white)
![Lint](https://img.shields.io/badge/Linter-ShellCheck-blue)
![Format](https://img.shields.io/badge/Formatter-shfmt-blueviolet)
![Tests](https://img.shields.io/badge/Testing-BATS%20Core-green)

<p align="center">
  <b>Repositório de engenharia em Shell Scripting moderno, robusto, modular e defensivo para administração de sistemas Linux, automação operacional, nuvem e DevOps.</b>
</p>

</div>

---

## 📌 Visão Geral

Este repositório reúne padrões profissionais de **Shell Scripting em Bash**, projetados segundo os princípios de programação defensiva, portabilidade POSIX, modularização e observabilidade.

Todos os scripts são construídos com foco em **produção**, eliminando práticas frágeis do Shell tradicional e aplicando análise estática contínua (`shellcheck`), formatação uniforme (`shfmt`) e testes unitários automatizados (`bats`).

---

## 🏗️ Matriz Arquitetural dos 12 Módulos

| # | Módulo | Foco Operacional | Ferramentas & Utilitários Chave |
|---|---|---|---|
| **01** | [`01-automacao`](./01-automacao) | Automação de rotinas de arquivos, processos, backups e agendamento | `find`, `xargs`, `rsync`, `tar`, `pgrep`, `crontab`, `systemd-timers` |
| **02** | [`02-linux-administracao`](./02-linux-administracao) | Gerenciamento de usuários, grupos, permissões ACL, pacotes e Systemd | `useradd`, `setfacl`, `systemctl`, `journalctl`, `apt`, `dpkg` |
| **03** | [`03-redes-e-protocolos`](./03-redes-e-protocolos) | Diagnóstico de rede, firewall, resolução DNS e conectividade SSH segura | `ip`, `ss`, `dig`, `iptables`, `nftables`, `tcpdump`, `ssh`, `scp` |
| **04** | [`04-seguranca`](./04-seguranca) | Hardening de SO, auditoria de integridade, gestão de segredos e SUID | `auditd`, `lynis`, `fail2ban`, `openssl`, `gpg`, `visudo` |
| **05** | [`05-devops-e-ci-cd`](./05-devops-e-ci-cd) | Git hooks e automação de steps para GitHub Actions e GitLab CI/CD | `git`, `gh`, `gitlab-runner`, `make`, `jq`, `yq` |
| **06** | [`06-cloud-e-infraestrutura`](./06-cloud-e-infraestrutura) | Scripts de orquestração via CLIs de AWS, Azure, GCP e cloud-init | `aws-cli`, `az-cli`, `gcloud`, `cloud-init`, `curl` |
| **07** | [`07-containers-e-kubernetes`](./07-containers-e-kubernetes) | Automação de imagens e containers Docker, manutenção e chamadas kubectl | `docker`, `docker-compose`, `kubectl`, `helm`, `crictl` |
| **08** | [`08-monitoramento-e-logs`](./08-monitoramento-e-logs) | Parsing de logs, métricas de hardware/SO, alertas e troubleshooting | `vmstat`, `iostat`, `awk`, `sed`, `journalctl`, `logrotate`, `strace` |
| **09** | [`09-storage-e-filesystems`](./09-storage-e-filesystems) | Particionamento LVM, RAID por software, volumes NFS/Samba e auditoria | `df`, `du`, `lvm`, `fdisk`, `parted`, `mdadm`, `mount` |
| **10** | [`10-funcoes-e-bibliotecas`](./10-funcoes-e-bibliotecas) | Bibliotecas reutilizáveis, formatação de logs, getopts e error handling | `getopts`, `trap`, `source`, `logger`, `declare` |
| **11** | [`11-testes-e-qualidade`](./11-testes-e-qualidade) | Análise estática com ShellCheck, formatação com shfmt e testes BATS | `shellcheck`, `shfmt`, `bats-core`, `set -x` |
| **12** | [`12-arquitetura-e-projetos`](./12-arquitetura-e-projetos) | Padrões de arquitetura, modularização de bibliotecas e projetos integradores | Boilerplates corporativos, failover de alta disponibilidade |

---

## 🛡️ Princípios de Programação Defensiva em Shell

Todo script deve seguir as seguintes diretrizes de segurança:

1. **Cabeçalho de Rigor Estrito:**
   ```bash
   #!/usr/bin/env bash
   set -euo pipefail
   IFS=$'\n\t'
   ```
   - `-e`: Interrompe a execução imediatamente se qualquer comando falhar.
   - `-u`: Lança erro ao tentar ler variáveis não declaradas.
   - `-o pipefail`: Propaga o código de erro de pipelines compostos (`cmd1 | cmd2`).
   - `IFS`: Evita quebras inesperadas com espaços em strings ao iterar.

2. **Interceptação de Sinais (`trap`):**
   ```bash
   cleanup() {
       rm -rf "${TMP_DIR:-}"
   }
   trap cleanup EXIT INT TERM
   ```

3. **Citação Obrigatória de Variáveis:**
   - Sempre utilize aspas duplas em referências de variáveis para evitar word splitting e globbing acidental:
   ```bash
   # Correto
   rm -rf "${TARGET_DIR:?Variavel obrigatoria}/${FILE}"
   ```

---

## 🧪 Qualidade de Código e Validação

```bash
# Verificar qualidade com ShellCheck
shellcheck script.sh

# Formatar o código no padrão oficial
shfmt -i 4 -w script.sh

# Executar suíte de testes BATS
bats tests/
```

---

## 👤 Autor e Manutenção

- **Mantenedor:** Junio Silvestre
- **Repositório:** [https://github.com/JunioSilvestre/Bash](https://github.com/JunioSilvestre/Bash)
