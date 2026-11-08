#!/usr/bin/env bash
set -euo pipefail

# Cria uma estrutura de estudo de Python voltada a Linux, DevOps, SRE e engenharia.
# Cada subpasta recebe um README.md com bibliotecas sugeridas e suas finalidades.
# O script não instala pacotes nem altera configurações do sistema.

ROOT="${1:-/home/Projetos/Python}"
mkdir -p "$ROOT"
echo "Criando estrutura em: $ROOT"

mkdir -p "$ROOT/01-automacao"
cat > "$ROOT/01-automacao/README.md" <<'EOF'
# 01-automacao

Área de estudo de Python aplicada a Linux, engenharia e infraestrutura.

## Subáreas
- `arquivos-e-diretorios/` — pathlib, shutil — manipulação de arquivos e diretórios (biblioteca padrão).
- `processos-e-servicos/` — subprocess, psutil — executar comandos e consultar processos.
- `tarefas-agendadas/` — APScheduler — agendamento dentro de aplicações; cron/systemd são alternativas nativas do Linux.
- `backup-e-restauracao/` — shutil, hashlib — cópia de arquivos e verificação de integridade (biblioteca padrão).
- `usuarios-e-permissoes/` — subprocess, pwd, grp — consultar contas e permissões; pwd/grp fazem parte da biblioteca padrão.
- `automacao-remota-ssh/` — Paramiko, Fabric — automação remota via SSH.

Instale dependências em um ambiente virtual por projeto; não instale tudo globalmente.
EOF
mkdir -p "$ROOT/01-automacao/arquivos-e-diretorios"
cat > "$ROOT/01-automacao/arquivos-e-diretorios/README.md" <<'EOF'
# arquivos-e-diretorios

**Bibliotecas/ferramentas sugeridas:** pathlib, shutil — manipulação de arquivos e diretórios (biblioteca padrão).

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/01-automacao/processos-e-servicos"
cat > "$ROOT/01-automacao/processos-e-servicos/README.md" <<'EOF'
# processos-e-servicos

**Bibliotecas/ferramentas sugeridas:** subprocess, psutil — executar comandos e consultar processos.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/01-automacao/tarefas-agendadas"
cat > "$ROOT/01-automacao/tarefas-agendadas/README.md" <<'EOF'
# tarefas-agendadas

**Bibliotecas/ferramentas sugeridas:** APScheduler — agendamento dentro de aplicações; cron/systemd são alternativas nativas do Linux.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/01-automacao/backup-e-restauracao"
cat > "$ROOT/01-automacao/backup-e-restauracao/README.md" <<'EOF'
# backup-e-restauracao

**Bibliotecas/ferramentas sugeridas:** shutil, hashlib — cópia de arquivos e verificação de integridade (biblioteca padrão).

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/01-automacao/usuarios-e-permissoes"
cat > "$ROOT/01-automacao/usuarios-e-permissoes/README.md" <<'EOF'
# usuarios-e-permissoes

**Bibliotecas/ferramentas sugeridas:** subprocess, pwd, grp — consultar contas e permissões; pwd/grp fazem parte da biblioteca padrão.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/01-automacao/automacao-remota-ssh"
cat > "$ROOT/01-automacao/automacao-remota-ssh/README.md" <<'EOF'
# automacao-remota-ssh

**Bibliotecas/ferramentas sugeridas:** Paramiko, Fabric — automação remota via SSH.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF

mkdir -p "$ROOT/02-linux-administracao"
cat > "$ROOT/02-linux-administracao/README.md" <<'EOF'
# 02-linux-administracao

Área de estudo de Python aplicada a Linux, engenharia e infraestrutura.

## Subáreas
- `gerenciamento-de-sistema/` — psutil, distro — métricas do sistema e identificação da distribuição.
- `systemd-e-servicos/` — subprocess, dbus-next — interação com systemd via comandos ou D-Bus.
- `pacotes-e-repositorios/` — subprocess — automação de apt/dnf; use os gerenciadores nativos do sistema.
- `discos-e-filesystems/` — psutil, pyudev — uso de discos e eventos de dispositivos.
- `usuarios-e-grupos/` — pwd, grp, subprocess — consulta de usuários/grupos e integração com ferramentas Linux.
- `logs-e-journald/` — subprocess, systemd-python (quando disponível) — consulta de logs e journald.

Instale dependências em um ambiente virtual por projeto; não instale tudo globalmente.
EOF
mkdir -p "$ROOT/02-linux-administracao/gerenciamento-de-sistema"
cat > "$ROOT/02-linux-administracao/gerenciamento-de-sistema/README.md" <<'EOF'
# gerenciamento-de-sistema

**Bibliotecas/ferramentas sugeridas:** psutil, distro — métricas do sistema e identificação da distribuição.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/02-linux-administracao/systemd-e-servicos"
cat > "$ROOT/02-linux-administracao/systemd-e-servicos/README.md" <<'EOF'
# systemd-e-servicos

**Bibliotecas/ferramentas sugeridas:** subprocess, dbus-next — interação com systemd via comandos ou D-Bus.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/02-linux-administracao/pacotes-e-repositorios"
cat > "$ROOT/02-linux-administracao/pacotes-e-repositorios/README.md" <<'EOF'
# pacotes-e-repositorios

**Bibliotecas/ferramentas sugeridas:** subprocess — automação de apt/dnf; use os gerenciadores nativos do sistema.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/02-linux-administracao/discos-e-filesystems"
cat > "$ROOT/02-linux-administracao/discos-e-filesystems/README.md" <<'EOF'
# discos-e-filesystems

**Bibliotecas/ferramentas sugeridas:** psutil, pyudev — uso de discos e eventos de dispositivos.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/02-linux-administracao/usuarios-e-grupos"
cat > "$ROOT/02-linux-administracao/usuarios-e-grupos/README.md" <<'EOF'
# usuarios-e-grupos

**Bibliotecas/ferramentas sugeridas:** pwd, grp, subprocess — consulta de usuários/grupos e integração com ferramentas Linux.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/02-linux-administracao/logs-e-journald"
cat > "$ROOT/02-linux-administracao/logs-e-journald/README.md" <<'EOF'
# logs-e-journald

**Bibliotecas/ferramentas sugeridas:** subprocess, systemd-python (quando disponível) — consulta de logs e journald.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF

mkdir -p "$ROOT/03-redes-e-protocolos"
cat > "$ROOT/03-redes-e-protocolos/README.md" <<'EOF'
# 03-redes-e-protocolos

Área de estudo de Python aplicada a Linux, engenharia e infraestrutura.

## Subáreas
- `tcp-ip-e-sockets/` — socket, ipaddress — sockets e manipulação de endereços IP (biblioteca padrão).
- `dns-e-dhcp/` — dnspython — consultas DNS; DHCP geralmente é integrado via APIs ou ferramentas do sistema.
- `ssh-e-sftp/` — Paramiko — conexões SSH e transferências SFTP.
- `firewall-e-portas/` — subprocess, python-nftables (quando aplicável) — integração com nftables e diagnóstico de portas.
- `diagnostico-de-rede/` — scapy, psutil — análise de pacotes em ambientes autorizados e métricas de rede.
- `monitoramento-de-conectividade/` — ping3, requests — testes de conectividade ICMP e HTTP.

Instale dependências em um ambiente virtual por projeto; não instale tudo globalmente.
EOF
mkdir -p "$ROOT/03-redes-e-protocolos/tcp-ip-e-sockets"
cat > "$ROOT/03-redes-e-protocolos/tcp-ip-e-sockets/README.md" <<'EOF'
# tcp-ip-e-sockets

**Bibliotecas/ferramentas sugeridas:** socket, ipaddress — sockets e manipulação de endereços IP (biblioteca padrão).

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/03-redes-e-protocolos/dns-e-dhcp"
cat > "$ROOT/03-redes-e-protocolos/dns-e-dhcp/README.md" <<'EOF'
# dns-e-dhcp

**Bibliotecas/ferramentas sugeridas:** dnspython — consultas DNS; DHCP geralmente é integrado via APIs ou ferramentas do sistema.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/03-redes-e-protocolos/ssh-e-sftp"
cat > "$ROOT/03-redes-e-protocolos/ssh-e-sftp/README.md" <<'EOF'
# ssh-e-sftp

**Bibliotecas/ferramentas sugeridas:** Paramiko — conexões SSH e transferências SFTP.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/03-redes-e-protocolos/firewall-e-portas"
cat > "$ROOT/03-redes-e-protocolos/firewall-e-portas/README.md" <<'EOF'
# firewall-e-portas

**Bibliotecas/ferramentas sugeridas:** subprocess, python-nftables (quando aplicável) — integração com nftables e diagnóstico de portas.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/03-redes-e-protocolos/diagnostico-de-rede"
cat > "$ROOT/03-redes-e-protocolos/diagnostico-de-rede/README.md" <<'EOF'
# diagnostico-de-rede

**Bibliotecas/ferramentas sugeridas:** scapy, psutil — análise de pacotes em ambientes autorizados e métricas de rede.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/03-redes-e-protocolos/monitoramento-de-conectividade"
cat > "$ROOT/03-redes-e-protocolos/monitoramento-de-conectividade/README.md" <<'EOF'
# monitoramento-de-conectividade

**Bibliotecas/ferramentas sugeridas:** ping3, requests — testes de conectividade ICMP e HTTP.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF

mkdir -p "$ROOT/04-seguranca"
cat > "$ROOT/04-seguranca/README.md" <<'EOF'
# 04-seguranca

Área de estudo de Python aplicada a Linux, engenharia e infraestrutura.

## Subáreas
- `auditoria-linux/` — subprocess, psutil — coleta de evidências e inventário de segurança.
- `hardening/` — PyYAML, Jinja2 — validar parâmetros e gerar configurações de hardening.
- `permissoes-e-acls/` — os, stat, subprocess — permissões POSIX e integração com getfacl/setfacl.
- `selinux-e-apparmor/` — subprocess — consultar políticas e status com ferramentas nativas.
- `certificados-e-tls/` — cryptography, ssl — operações criptográficas e validação TLS.
- `analise-de-logs-de-seguranca/` — re, pandas — extração de padrões e análise de eventos.

Instale dependências em um ambiente virtual por projeto; não instale tudo globalmente.
EOF
mkdir -p "$ROOT/04-seguranca/auditoria-linux"
cat > "$ROOT/04-seguranca/auditoria-linux/README.md" <<'EOF'
# auditoria-linux

**Bibliotecas/ferramentas sugeridas:** subprocess, psutil — coleta de evidências e inventário de segurança.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/04-seguranca/hardening"
cat > "$ROOT/04-seguranca/hardening/README.md" <<'EOF'
# hardening

**Bibliotecas/ferramentas sugeridas:** PyYAML, Jinja2 — validar parâmetros e gerar configurações de hardening.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/04-seguranca/permissoes-e-acls"
cat > "$ROOT/04-seguranca/permissoes-e-acls/README.md" <<'EOF'
# permissoes-e-acls

**Bibliotecas/ferramentas sugeridas:** os, stat, subprocess — permissões POSIX e integração com getfacl/setfacl.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/04-seguranca/selinux-e-apparmor"
cat > "$ROOT/04-seguranca/selinux-e-apparmor/README.md" <<'EOF'
# selinux-e-apparmor

**Bibliotecas/ferramentas sugeridas:** subprocess — consultar políticas e status com ferramentas nativas.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/04-seguranca/certificados-e-tls"
cat > "$ROOT/04-seguranca/certificados-e-tls/README.md" <<'EOF'
# certificados-e-tls

**Bibliotecas/ferramentas sugeridas:** cryptography, ssl — operações criptográficas e validação TLS.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/04-seguranca/analise-de-logs-de-seguranca"
cat > "$ROOT/04-seguranca/analise-de-logs-de-seguranca/README.md" <<'EOF'
# analise-de-logs-de-seguranca

**Bibliotecas/ferramentas sugeridas:** re, pandas — extração de padrões e análise de eventos.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF

mkdir -p "$ROOT/05-devops-e-ci-cd"
cat > "$ROOT/05-devops-e-ci-cd/README.md" <<'EOF'
# 05-devops-e-ci-cd

Área de estudo de Python aplicada a Linux, engenharia e infraestrutura.

## Subáreas
- `git-e-github/` — GitPython, requests — operações Git e integração com APIs.
- `pipelines/` — PyYAML, Jinja2 — validar e gerar arquivos de pipeline YAML.
- `github-actions/` — requests — integração com a API do GitHub; workflows são configurados em YAML.
- `gitlab-ci/` — python-gitlab, PyYAML — API do GitLab e análise de configurações CI.
- `integracao-e-deploy/` — Fabric, Paramiko, requests — implantação e execução remota.
- `gerenciamento-de-configuracao/` — Jinja2, PyYAML, pydantic — templates e validação de configuração.

Instale dependências em um ambiente virtual por projeto; não instale tudo globalmente.
EOF
mkdir -p "$ROOT/05-devops-e-ci-cd/git-e-github"
cat > "$ROOT/05-devops-e-ci-cd/git-e-github/README.md" <<'EOF'
# git-e-github

**Bibliotecas/ferramentas sugeridas:** GitPython, requests — operações Git e integração com APIs.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/05-devops-e-ci-cd/pipelines"
cat > "$ROOT/05-devops-e-ci-cd/pipelines/README.md" <<'EOF'
# pipelines

**Bibliotecas/ferramentas sugeridas:** PyYAML, Jinja2 — validar e gerar arquivos de pipeline YAML.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/05-devops-e-ci-cd/github-actions"
cat > "$ROOT/05-devops-e-ci-cd/github-actions/README.md" <<'EOF'
# github-actions

**Bibliotecas/ferramentas sugeridas:** requests — integração com a API do GitHub; workflows são configurados em YAML.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/05-devops-e-ci-cd/gitlab-ci"
cat > "$ROOT/05-devops-e-ci-cd/gitlab-ci/README.md" <<'EOF'
# gitlab-ci

**Bibliotecas/ferramentas sugeridas:** python-gitlab, PyYAML — API do GitLab e análise de configurações CI.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/05-devops-e-ci-cd/integracao-e-deploy"
cat > "$ROOT/05-devops-e-ci-cd/integracao-e-deploy/README.md" <<'EOF'
# integracao-e-deploy

**Bibliotecas/ferramentas sugeridas:** Fabric, Paramiko, requests — implantação e execução remota.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/05-devops-e-ci-cd/gerenciamento-de-configuracao"
cat > "$ROOT/05-devops-e-ci-cd/gerenciamento-de-configuracao/README.md" <<'EOF'
# gerenciamento-de-configuracao

**Bibliotecas/ferramentas sugeridas:** Jinja2, PyYAML, pydantic — templates e validação de configuração.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF

mkdir -p "$ROOT/06-cloud-e-infraestrutura"
cat > "$ROOT/06-cloud-e-infraestrutura/README.md" <<'EOF'
# 06-cloud-e-infraestrutura

Área de estudo de Python aplicada a Linux, engenharia e infraestrutura.

## Subáreas
- `aws/` — boto3 — SDK para serviços AWS.
- `azure/` — azure-identity, azure-mgmt-compute — autenticação e gestão de recursos Azure.
- `provisionamento/` — requests, pydantic — automação por APIs e validação de parâmetros.
- `infraestrutura-como-codigo/` — python-hcl2, PyYAML — leitura de HCL/Terraform e YAML; Terraform CLI continua sendo a ferramenta de execução.
- `inventario-de-recursos/` — boto3, azure-mgmt-resource — inventário de recursos cloud.
- `custos-e-otimizacao/` — boto3, azure-mgmt-costmanagement — coleta de dados de custos, conforme permissões e APIs disponíveis.

Instale dependências em um ambiente virtual por projeto; não instale tudo globalmente.
EOF
mkdir -p "$ROOT/06-cloud-e-infraestrutura/aws"
cat > "$ROOT/06-cloud-e-infraestrutura/aws/README.md" <<'EOF'
# aws

**Bibliotecas/ferramentas sugeridas:** boto3 — SDK para serviços AWS.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/06-cloud-e-infraestrutura/azure"
cat > "$ROOT/06-cloud-e-infraestrutura/azure/README.md" <<'EOF'
# azure

**Bibliotecas/ferramentas sugeridas:** azure-identity, azure-mgmt-compute — autenticação e gestão de recursos Azure.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/06-cloud-e-infraestrutura/provisionamento"
cat > "$ROOT/06-cloud-e-infraestrutura/provisionamento/README.md" <<'EOF'
# provisionamento

**Bibliotecas/ferramentas sugeridas:** requests, pydantic — automação por APIs e validação de parâmetros.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/06-cloud-e-infraestrutura/infraestrutura-como-codigo"
cat > "$ROOT/06-cloud-e-infraestrutura/infraestrutura-como-codigo/README.md" <<'EOF'
# infraestrutura-como-codigo

**Bibliotecas/ferramentas sugeridas:** python-hcl2, PyYAML — leitura de HCL/Terraform e YAML; Terraform CLI continua sendo a ferramenta de execução.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/06-cloud-e-infraestrutura/inventario-de-recursos"
cat > "$ROOT/06-cloud-e-infraestrutura/inventario-de-recursos/README.md" <<'EOF'
# inventario-de-recursos

**Bibliotecas/ferramentas sugeridas:** boto3, azure-mgmt-resource — inventário de recursos cloud.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/06-cloud-e-infraestrutura/custos-e-otimizacao"
cat > "$ROOT/06-cloud-e-infraestrutura/custos-e-otimizacao/README.md" <<'EOF'
# custos-e-otimizacao

**Bibliotecas/ferramentas sugeridas:** boto3, azure-mgmt-costmanagement — coleta de dados de custos, conforme permissões e APIs disponíveis.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF

mkdir -p "$ROOT/07-containers-e-kubernetes"
cat > "$ROOT/07-containers-e-kubernetes/README.md" <<'EOF'
# 07-containers-e-kubernetes

Área de estudo de Python aplicada a Linux, engenharia e infraestrutura.

## Subáreas
- `docker/` — docker — SDK Python para Docker Engine.
- `imagens-e-registries/` — requests — integração com APIs de registries.
- `kubernetes-api/` — kubernetes — cliente Python oficial da API Kubernetes.
- `pods-e-deployments/` — kubernetes — consultar e gerenciar workloads via API.
- `health-checks/` — requests, kubernetes — verificações de saúde de serviços e workloads.
- `operadores-e-automacao/` — kopf, kubernetes — construção de operadores Kubernetes em Python.

Instale dependências em um ambiente virtual por projeto; não instale tudo globalmente.
EOF
mkdir -p "$ROOT/07-containers-e-kubernetes/docker"
cat > "$ROOT/07-containers-e-kubernetes/docker/README.md" <<'EOF'
# docker

**Bibliotecas/ferramentas sugeridas:** docker — SDK Python para Docker Engine.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/07-containers-e-kubernetes/imagens-e-registries"
cat > "$ROOT/07-containers-e-kubernetes/imagens-e-registries/README.md" <<'EOF'
# imagens-e-registries

**Bibliotecas/ferramentas sugeridas:** requests — integração com APIs de registries.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/07-containers-e-kubernetes/kubernetes-api"
cat > "$ROOT/07-containers-e-kubernetes/kubernetes-api/README.md" <<'EOF'
# kubernetes-api

**Bibliotecas/ferramentas sugeridas:** kubernetes — cliente Python oficial da API Kubernetes.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/07-containers-e-kubernetes/pods-e-deployments"
cat > "$ROOT/07-containers-e-kubernetes/pods-e-deployments/README.md" <<'EOF'
# pods-e-deployments

**Bibliotecas/ferramentas sugeridas:** kubernetes — consultar e gerenciar workloads via API.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/07-containers-e-kubernetes/health-checks"
cat > "$ROOT/07-containers-e-kubernetes/health-checks/README.md" <<'EOF'
# health-checks

**Bibliotecas/ferramentas sugeridas:** requests, kubernetes — verificações de saúde de serviços e workloads.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/07-containers-e-kubernetes/operadores-e-automacao"
cat > "$ROOT/07-containers-e-kubernetes/operadores-e-automacao/README.md" <<'EOF'
# operadores-e-automacao

**Bibliotecas/ferramentas sugeridas:** kopf, kubernetes — construção de operadores Kubernetes em Python.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF

mkdir -p "$ROOT/08-monitoramento-e-observabilidade"
cat > "$ROOT/08-monitoramento-e-observabilidade/README.md" <<'EOF'
# 08-monitoramento-e-observabilidade

Área de estudo de Python aplicada a Linux, engenharia e infraestrutura.

## Subáreas
- `coleta-de-metricas/` — psutil, prometheus-client — métricas do host e exposição para Prometheus.
- `parsing-de-logs/` — structlog, re — logs estruturados e extração de padrões.
- `prometheus/` — prometheus-client, requests — publicar métricas e consultar APIs.
- `grafana/` — requests — integração com a API HTTP do Grafana.
- `alertas/` — requests, httpx — integração com webhooks e APIs de notificação.
- `health-checks-e-diagnosticos/` — psutil, requests — verificar recursos locais e endpoints.

Instale dependências em um ambiente virtual por projeto; não instale tudo globalmente.
EOF
mkdir -p "$ROOT/08-monitoramento-e-observabilidade/coleta-de-metricas"
cat > "$ROOT/08-monitoramento-e-observabilidade/coleta-de-metricas/README.md" <<'EOF'
# coleta-de-metricas

**Bibliotecas/ferramentas sugeridas:** psutil, prometheus-client — métricas do host e exposição para Prometheus.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/08-monitoramento-e-observabilidade/parsing-de-logs"
cat > "$ROOT/08-monitoramento-e-observabilidade/parsing-de-logs/README.md" <<'EOF'
# parsing-de-logs

**Bibliotecas/ferramentas sugeridas:** structlog, re — logs estruturados e extração de padrões.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/08-monitoramento-e-observabilidade/prometheus"
cat > "$ROOT/08-monitoramento-e-observabilidade/prometheus/README.md" <<'EOF'
# prometheus

**Bibliotecas/ferramentas sugeridas:** prometheus-client, requests — publicar métricas e consultar APIs.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/08-monitoramento-e-observabilidade/grafana"
cat > "$ROOT/08-monitoramento-e-observabilidade/grafana/README.md" <<'EOF'
# grafana

**Bibliotecas/ferramentas sugeridas:** requests — integração com a API HTTP do Grafana.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/08-monitoramento-e-observabilidade/alertas"
cat > "$ROOT/08-monitoramento-e-observabilidade/alertas/README.md" <<'EOF'
# alertas

**Bibliotecas/ferramentas sugeridas:** requests, httpx — integração com webhooks e APIs de notificação.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/08-monitoramento-e-observabilidade/health-checks-e-diagnosticos"
cat > "$ROOT/08-monitoramento-e-observabilidade/health-checks-e-diagnosticos/README.md" <<'EOF'
# health-checks-e-diagnosticos

**Bibliotecas/ferramentas sugeridas:** psutil, requests — verificar recursos locais e endpoints.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF

mkdir -p "$ROOT/09-engenharia-de-dados"
cat > "$ROOT/09-engenharia-de-dados/README.md" <<'EOF'
# 09-engenharia-de-dados

Área de estudo de Python aplicada a Linux, engenharia e infraestrutura.

## Subáreas
- `coleta-e-ingestao/` — requests, httpx — coletar dados de APIs e serviços HTTP.
- `etl-e-elt/` — pandas, polars — transformação de dados tabulares.
- `processamento-de-arquivos/` — pandas, pyarrow — processar CSV, Parquet e outros formatos.
- `sql-e-bancos-de-dados/` — SQLAlchemy, psycopg — acesso a bancos SQL e PostgreSQL.
- `pipelines-de-dados/` — Prefect — orquestração de workflows de dados.
- `qualidade-e-validacao/` — pandera, pydantic — validação de esquemas e dados.

Instale dependências em um ambiente virtual por projeto; não instale tudo globalmente.
EOF
mkdir -p "$ROOT/09-engenharia-de-dados/coleta-e-ingestao"
cat > "$ROOT/09-engenharia-de-dados/coleta-e-ingestao/README.md" <<'EOF'
# coleta-e-ingestao

**Bibliotecas/ferramentas sugeridas:** requests, httpx — coletar dados de APIs e serviços HTTP.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/09-engenharia-de-dados/etl-e-elt"
cat > "$ROOT/09-engenharia-de-dados/etl-e-elt/README.md" <<'EOF'
# etl-e-elt

**Bibliotecas/ferramentas sugeridas:** pandas, polars — transformação de dados tabulares.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/09-engenharia-de-dados/processamento-de-arquivos"
cat > "$ROOT/09-engenharia-de-dados/processamento-de-arquivos/README.md" <<'EOF'
# processamento-de-arquivos

**Bibliotecas/ferramentas sugeridas:** pandas, pyarrow — processar CSV, Parquet e outros formatos.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/09-engenharia-de-dados/sql-e-bancos-de-dados"
cat > "$ROOT/09-engenharia-de-dados/sql-e-bancos-de-dados/README.md" <<'EOF'
# sql-e-bancos-de-dados

**Bibliotecas/ferramentas sugeridas:** SQLAlchemy, psycopg — acesso a bancos SQL e PostgreSQL.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/09-engenharia-de-dados/pipelines-de-dados"
cat > "$ROOT/09-engenharia-de-dados/pipelines-de-dados/README.md" <<'EOF'
# pipelines-de-dados

**Bibliotecas/ferramentas sugeridas:** Prefect — orquestração de workflows de dados.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/09-engenharia-de-dados/qualidade-e-validacao"
cat > "$ROOT/09-engenharia-de-dados/qualidade-e-validacao/README.md" <<'EOF'
# qualidade-e-validacao

**Bibliotecas/ferramentas sugeridas:** pandera, pydantic — validação de esquemas e dados.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF

mkdir -p "$ROOT/10-arquitetura-e-sre"
cat > "$ROOT/10-arquitetura-e-sre/README.md" <<'EOF'
# 10-arquitetura-e-sre

Área de estudo de Python aplicada a Linux, engenharia e infraestrutura.

## Subáreas
- `arquitetura-de-sistemas/` — pydantic, networkx — validar modelos de configuração e analisar grafos/dependências.
- `alta-disponibilidade/` — requests, tenacity — health checks e retentativas controladas.
- `resiliencia-e-falhas/` — tenacity, pybreaker — retentativas e padrão circuit breaker.
- `capacity-planning/` — pandas, numpy — análise de séries e projeção de capacidade.
- `sla-slo-sli/` — pandas, prometheus-client — cálculo de indicadores e exposição de métricas.
- `disaster-recovery/` — shutil, hashlib, boto3 — cópias, validação de integridade e armazenamento cloud.

Instale dependências em um ambiente virtual por projeto; não instale tudo globalmente.
EOF
mkdir -p "$ROOT/10-arquitetura-e-sre/arquitetura-de-sistemas"
cat > "$ROOT/10-arquitetura-e-sre/arquitetura-de-sistemas/README.md" <<'EOF'
# arquitetura-de-sistemas

**Bibliotecas/ferramentas sugeridas:** pydantic, networkx — validar modelos de configuração e analisar grafos/dependências.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/10-arquitetura-e-sre/alta-disponibilidade"
cat > "$ROOT/10-arquitetura-e-sre/alta-disponibilidade/README.md" <<'EOF'
# alta-disponibilidade

**Bibliotecas/ferramentas sugeridas:** requests, tenacity — health checks e retentativas controladas.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/10-arquitetura-e-sre/resiliencia-e-falhas"
cat > "$ROOT/10-arquitetura-e-sre/resiliencia-e-falhas/README.md" <<'EOF'
# resiliencia-e-falhas

**Bibliotecas/ferramentas sugeridas:** tenacity, pybreaker — retentativas e padrão circuit breaker.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/10-arquitetura-e-sre/capacity-planning"
cat > "$ROOT/10-arquitetura-e-sre/capacity-planning/README.md" <<'EOF'
# capacity-planning

**Bibliotecas/ferramentas sugeridas:** pandas, numpy — análise de séries e projeção de capacidade.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/10-arquitetura-e-sre/sla-slo-sli"
cat > "$ROOT/10-arquitetura-e-sre/sla-slo-sli/README.md" <<'EOF'
# sla-slo-sli

**Bibliotecas/ferramentas sugeridas:** pandas, prometheus-client — cálculo de indicadores e exposição de métricas.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/10-arquitetura-e-sre/disaster-recovery"
cat > "$ROOT/10-arquitetura-e-sre/disaster-recovery/README.md" <<'EOF'
# disaster-recovery

**Bibliotecas/ferramentas sugeridas:** shutil, hashlib, boto3 — cópias, validação de integridade e armazenamento cloud.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF

mkdir -p "$ROOT/11-apis-e-backend"
cat > "$ROOT/11-apis-e-backend/README.md" <<'EOF'
# 11-apis-e-backend

Área de estudo de Python aplicada a Linux, engenharia e infraestrutura.

## Subáreas
- `fastapi/` — fastapi, uvicorn, pydantic — APIs e validação de dados.
- `flask/` — flask, gunicorn — aplicações web e servidor WSGI.
- `autenticacao-e-autorizacao/` — PyJWT, authlib, passlib — tokens e componentes de autenticação; escolha conforme o padrão adotado.
- `bancos-de-dados-e-orm/` — SQLAlchemy, alembic — ORM e migrações de banco.
- `filas-e-mensageria/` — celery, redis, pika — tarefas assíncronas e mensageria.
- `integracoes-entre-servicos/` — httpx, tenacity — clientes HTTP e retentativas.

Instale dependências em um ambiente virtual por projeto; não instale tudo globalmente.
EOF
mkdir -p "$ROOT/11-apis-e-backend/fastapi"
cat > "$ROOT/11-apis-e-backend/fastapi/README.md" <<'EOF'
# fastapi

**Bibliotecas/ferramentas sugeridas:** fastapi, uvicorn, pydantic — APIs e validação de dados.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/11-apis-e-backend/flask"
cat > "$ROOT/11-apis-e-backend/flask/README.md" <<'EOF'
# flask

**Bibliotecas/ferramentas sugeridas:** flask, gunicorn — aplicações web e servidor WSGI.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/11-apis-e-backend/autenticacao-e-autorizacao"
cat > "$ROOT/11-apis-e-backend/autenticacao-e-autorizacao/README.md" <<'EOF'
# autenticacao-e-autorizacao

**Bibliotecas/ferramentas sugeridas:** PyJWT, authlib, passlib — tokens e componentes de autenticação; escolha conforme o padrão adotado.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/11-apis-e-backend/bancos-de-dados-e-orm"
cat > "$ROOT/11-apis-e-backend/bancos-de-dados-e-orm/README.md" <<'EOF'
# bancos-de-dados-e-orm

**Bibliotecas/ferramentas sugeridas:** SQLAlchemy, alembic — ORM e migrações de banco.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/11-apis-e-backend/filas-e-mensageria"
cat > "$ROOT/11-apis-e-backend/filas-e-mensageria/README.md" <<'EOF'
# filas-e-mensageria

**Bibliotecas/ferramentas sugeridas:** celery, redis, pika — tarefas assíncronas e mensageria.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/11-apis-e-backend/integracoes-entre-servicos"
cat > "$ROOT/11-apis-e-backend/integracoes-entre-servicos/README.md" <<'EOF'
# integracoes-entre-servicos

**Bibliotecas/ferramentas sugeridas:** httpx, tenacity — clientes HTTP e retentativas.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF

mkdir -p "$ROOT/12-scripting-e-cli"
cat > "$ROOT/12-scripting-e-cli/README.md" <<'EOF'
# 12-scripting-e-cli

Área de estudo de Python aplicada a Linux, engenharia e infraestrutura.

## Subáreas
- `scripts-de-terminal/` — argparse, subprocess, pathlib — argumentos, comandos e caminhos (biblioteca padrão).
- `argparse-e-click/` — argparse, click, typer — interfaces de linha de comando.
- `utilitarios-linux/` — psutil, distro — utilitários de diagnóstico do host.
- `formatacao-de-saida/` — rich, tabulate — tabelas e saída formatada no terminal.
- `configuracao-e-variaveis/` — python-dotenv, pydantic-settings — variáveis de ambiente e configurações.
- `ferramentas-de-linha-de-comando/` — typer, rich — criação de CLIs reutilizáveis.

Instale dependências em um ambiente virtual por projeto; não instale tudo globalmente.
EOF
mkdir -p "$ROOT/12-scripting-e-cli/scripts-de-terminal"
cat > "$ROOT/12-scripting-e-cli/scripts-de-terminal/README.md" <<'EOF'
# scripts-de-terminal

**Bibliotecas/ferramentas sugeridas:** argparse, subprocess, pathlib — argumentos, comandos e caminhos (biblioteca padrão).

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/12-scripting-e-cli/argparse-e-click"
cat > "$ROOT/12-scripting-e-cli/argparse-e-click/README.md" <<'EOF'
# argparse-e-click

**Bibliotecas/ferramentas sugeridas:** argparse, click, typer — interfaces de linha de comando.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/12-scripting-e-cli/utilitarios-linux"
cat > "$ROOT/12-scripting-e-cli/utilitarios-linux/README.md" <<'EOF'
# utilitarios-linux

**Bibliotecas/ferramentas sugeridas:** psutil, distro — utilitários de diagnóstico do host.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/12-scripting-e-cli/formatacao-de-saida"
cat > "$ROOT/12-scripting-e-cli/formatacao-de-saida/README.md" <<'EOF'
# formatacao-de-saida

**Bibliotecas/ferramentas sugeridas:** rich, tabulate — tabelas e saída formatada no terminal.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/12-scripting-e-cli/configuracao-e-variaveis"
cat > "$ROOT/12-scripting-e-cli/configuracao-e-variaveis/README.md" <<'EOF'
# configuracao-e-variaveis

**Bibliotecas/ferramentas sugeridas:** python-dotenv, pydantic-settings — variáveis de ambiente e configurações.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/12-scripting-e-cli/ferramentas-de-linha-de-comando"
cat > "$ROOT/12-scripting-e-cli/ferramentas-de-linha-de-comando/README.md" <<'EOF'
# ferramentas-de-linha-de-comando

**Bibliotecas/ferramentas sugeridas:** typer, rich — criação de CLIs reutilizáveis.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF

mkdir -p "$ROOT/13-testes-e-qualidade"
cat > "$ROOT/13-testes-e-qualidade/README.md" <<'EOF'
# 13-testes-e-qualidade

Área de estudo de Python aplicada a Linux, engenharia e infraestrutura.

## Subáreas
- `pytest/` — pytest — testes automatizados.
- `testes-unitarios/` — pytest, unittest.mock — testes unitários e substituição de dependências.
- `testes-de-integracao/` — pytest, testcontainers — testes com serviços e dependências reais.
- `testes-de-rede/` — pytest, responses, respx — testes de clientes HTTP e comportamento de rede.
- `lint-e-formatacao/` — ruff, mypy — lint, formatação e checagem estática de tipos.
- `seguranca-de-codigo/` — bandit, pip-audit — análise estática e auditoria de dependências.

Instale dependências em um ambiente virtual por projeto; não instale tudo globalmente.
EOF
mkdir -p "$ROOT/13-testes-e-qualidade/pytest"
cat > "$ROOT/13-testes-e-qualidade/pytest/README.md" <<'EOF'
# pytest

**Bibliotecas/ferramentas sugeridas:** pytest — testes automatizados.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/13-testes-e-qualidade/testes-unitarios"
cat > "$ROOT/13-testes-e-qualidade/testes-unitarios/README.md" <<'EOF'
# testes-unitarios

**Bibliotecas/ferramentas sugeridas:** pytest, unittest.mock — testes unitários e substituição de dependências.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/13-testes-e-qualidade/testes-de-integracao"
cat > "$ROOT/13-testes-e-qualidade/testes-de-integracao/README.md" <<'EOF'
# testes-de-integracao

**Bibliotecas/ferramentas sugeridas:** pytest, testcontainers — testes com serviços e dependências reais.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/13-testes-e-qualidade/testes-de-rede"
cat > "$ROOT/13-testes-e-qualidade/testes-de-rede/README.md" <<'EOF'
# testes-de-rede

**Bibliotecas/ferramentas sugeridas:** pytest, responses, respx — testes de clientes HTTP e comportamento de rede.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/13-testes-e-qualidade/lint-e-formatacao"
cat > "$ROOT/13-testes-e-qualidade/lint-e-formatacao/README.md" <<'EOF'
# lint-e-formatacao

**Bibliotecas/ferramentas sugeridas:** ruff, mypy — lint, formatação e checagem estática de tipos.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/13-testes-e-qualidade/seguranca-de-codigo"
cat > "$ROOT/13-testes-e-qualidade/seguranca-de-codigo/README.md" <<'EOF'
# seguranca-de-codigo

**Bibliotecas/ferramentas sugeridas:** bandit, pip-audit — análise estática e auditoria de dependências.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF

mkdir -p "$ROOT/14-projetos-integradores"
cat > "$ROOT/14-projetos-integradores/README.md" <<'EOF'
# 14-projetos-integradores

Área de estudo de Python aplicada a Linux, engenharia e infraestrutura.

## Subáreas
- `automacao-de-servidores/` — Paramiko, Fabric, psutil — automação remota e inventário.
- `plataforma-de-monitoramento/` — FastAPI, prometheus-client, psutil — API e métricas de infraestrutura.
- `auditoria-de-infraestrutura/` — psutil, PyYAML, pydantic — coleta, regras e validação.
- `provisionamento-automatizado/` — boto3, azure-identity, Jinja2 — provisionamento cloud e templates.
- `pipeline-devops-completo/` — GitPython, requests, PyYAML, pytest — integração de repositório, APIs, pipeline e testes.
- `plataforma-de-operacoes-linux/` — FastAPI, psutil, Paramiko, SQLAlchemy — portal de operações, inventário e automação.

Instale dependências em um ambiente virtual por projeto; não instale tudo globalmente.
EOF
mkdir -p "$ROOT/14-projetos-integradores/automacao-de-servidores"
cat > "$ROOT/14-projetos-integradores/automacao-de-servidores/README.md" <<'EOF'
# automacao-de-servidores

**Bibliotecas/ferramentas sugeridas:** Paramiko, Fabric, psutil — automação remota e inventário.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/14-projetos-integradores/plataforma-de-monitoramento"
cat > "$ROOT/14-projetos-integradores/plataforma-de-monitoramento/README.md" <<'EOF'
# plataforma-de-monitoramento

**Bibliotecas/ferramentas sugeridas:** FastAPI, prometheus-client, psutil — API e métricas de infraestrutura.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/14-projetos-integradores/auditoria-de-infraestrutura"
cat > "$ROOT/14-projetos-integradores/auditoria-de-infraestrutura/README.md" <<'EOF'
# auditoria-de-infraestrutura

**Bibliotecas/ferramentas sugeridas:** psutil, PyYAML, pydantic — coleta, regras e validação.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/14-projetos-integradores/provisionamento-automatizado"
cat > "$ROOT/14-projetos-integradores/provisionamento-automatizado/README.md" <<'EOF'
# provisionamento-automatizado

**Bibliotecas/ferramentas sugeridas:** boto3, azure-identity, Jinja2 — provisionamento cloud e templates.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/14-projetos-integradores/pipeline-devops-completo"
cat > "$ROOT/14-projetos-integradores/pipeline-devops-completo/README.md" <<'EOF'
# pipeline-devops-completo

**Bibliotecas/ferramentas sugeridas:** GitPython, requests, PyYAML, pytest — integração de repositório, APIs, pipeline e testes.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF
mkdir -p "$ROOT/14-projetos-integradores/plataforma-de-operacoes-linux"
cat > "$ROOT/14-projetos-integradores/plataforma-de-operacoes-linux/README.md" <<'EOF'
# plataforma-de-operacoes-linux

**Bibliotecas/ferramentas sugeridas:** FastAPI, psutil, Paramiko, SQLAlchemy — portal de operações, inventário e automação.

## Observações
- Algumas opções citadas pertencem à biblioteca padrão do Python e não precisam ser instaladas com pip.
- Instale somente as dependências necessárias para o projeto desta pasta.
- Prefira um ambiente virtual (`python3 -m venv .venv`) por projeto.
- Verifique a documentação oficial e a compatibilidade com sua versão do Python antes de instalar.

## Projetos
- Adicione aqui exercícios, scripts e projetos relacionados a esta subárea.
EOF

cat > "$ROOT/README.md" <<'EOF'
# Python — Linux, DevOps e Engenharia

Repositório organizado por áreas técnicas, com foco em automação, administração Linux, redes, segurança, cloud, containers, observabilidade, dados, arquitetura e APIs.

## Como começar

Crie um ambiente virtual dentro da pasta do projeto:

```bash
python3 -m venv .venv
source .venv/bin/activate
python -m pip install --upgrade pip
```

Instale somente as bibliotecas necessárias para aquele projeto. Não instale todas as bibliotecas de todas as áreas em um único ambiente.
EOF
echo "Concluído. Estrutura e README.md criados em: $ROOT"
echo "Nenhuma biblioteca foi instalada."
