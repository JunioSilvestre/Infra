# 01 — Janela de Atualização Automática de Segurança com Reboot Agendado

## 🏢 Cenário de Negócios e Produção Real
Parque de centenas de servidores Debian/Ubuntu/RHEL exigindo aplicação de patches de segurança sem intervenção manual e com reboot controlado fora do horário comercial.

### ⚠️ O Problema Real
Reboots desordenados causam indisponibilidade de serviços. Falhas na atualização de pacotes quebrados travam o gerenciador de pacotes.

## 🚀 Arquitetura e Engenharia em Bash
Verificação de janelas de manutenção via cron/systemd timer, checagem de flags de reboot pendente (/var/run/reboot-required), validação de sanidade do apt/dnf, disparo de notificações e reboot seguro com shutdown -r.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`apt-get, needrestart, systemctl, shutdown, logger, mailx`

## 📌 Exemplo de Execução CLI
```bash
./patch_window.sh --security-only --reboot-window '03:00-05:00' --dry-run
```
