# 02 — Automação de Onboarding e Offboarding com Revogação Instantânea de Chaves SSH

## 🏢 Cenário de Negócios e Produção Real
Gestão de identidade e acessos (IAM) local para equipes de engenharia com alta rotatividade.

### ⚠️ O Problema Real
Colaboradores desligados continuam com chaves SSH ativas em instâncias de produção, violando SOC 2 e ISO 27001.

## 🚀 Arquitetura e Engenharia em Bash
Criação padronizada de usuários com UID/GID fixo, injeção de chaves SSH com permissões 0600 em ~/.ssh/authorized_keys, expiração de senhas e script de offboarding que mata sessões ativas (pkill -u) e bloqueia a conta (usermod -L -e 1).

## 🛠️ Ferramentas Nativas Linux Utilizadas
`useradd, usermod, pkill, chage, shred, logger`

## 📌 Exemplo de Execução CLI
```bash
./user_lifecycle.sh --action offboard --username dev.ops --kill-sessions --purge-keys
```
