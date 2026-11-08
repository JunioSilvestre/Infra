# 13 — Monitor em Tempo Real de Escalonamento de Privilégios e Comandos Sudo

## 🏢 Cenário de Negócios e Produção Real
Auditoria de segurança contínua para registrar e alertar imediatamente toda execução de comandos via sudo por usuários não-root.

### ⚠️ O Problema Real
Administradores com acesso sudo executam comandos perigosos ou ilegais e alteram logs posteriormente para encobrir rastros.

## 🚀 Arquitetura e Engenharia em Bash
Acompanhamento em streaming do /var/log/auth.log via tail -F, extração de eventos com 'COMMAND=' via awk, identificação de comandos proibidos (sudo su, sudo bash, visudo) e disparo de alerta instantâneo para o canal de SecOps.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`tail, awk, logger, curl, jq`

## 📌 Exemplo de Execução CLI
```bash
./sudo_audit_stream.sh --alert-channel slack --watch-commands 'su,bash,sh,chmod'
```
