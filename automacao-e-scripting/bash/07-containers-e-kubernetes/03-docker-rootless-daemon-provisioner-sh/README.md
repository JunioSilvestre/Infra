# 03 — Provisionador e Auditor de Docker em Modo Rootless sem Privilégios de Root

## 🏢 Cenário de Negócios e Produção Real
Ambientes compartilhados de desenvolvimento onde desenvolvedores precisam rodar Docker sem terem privilégios de root no servidor.

### ⚠️ O Problema Real
Acesso ao socket tradicional do Docker (/var/run/docker.sock) equivale a acesso root completo à máquina física.

## 🚀 Arquitetura e Engenharia em Bash
Instalação do runtime user namespaces (uidmap, slirp4netns), configuração do daemon do Docker sob o systemd do usuário (systemctl --user start docker), ajuste de variáveis de ambiente e validação de segurança.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`dockerd-rootless.sh, systemctl --user, loginctl, id`

## 📌 Exemplo de Execução CLI
```bash
./setup_rootless_docker.sh --user devuser --enable-linger
```
