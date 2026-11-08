# 10 — Auditor e Enforcer de Cotas de Disco Multi-Usuário

## 🏢 Cenário de Negócios e Produção Real
Servidores de arquivos ou ambientes de desenvolvimento compartilhado onde usuários lotam o storage com arquivos temporários.

### ⚠️ O Problema Real
Esgotamento abrupto do sistema de arquivos /home derruba serviços e impede logins via SSH.

## 🚀 Arquitetura e Engenharia em Bash
Auditoria de cotas via repquota / edquota, identificação de usuários com >90% de uso da cota soft, envio automático de e-mail de alerta e limpeza temporária de diretórios ~/.cache e /tmp.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`repquota, quota, find, mailx, logger`

## 📌 Exemplo de Execução CLI
```bash
./quota_watchdog.sh --filesystem /home --warning-percent 85 --purge-caches
```
