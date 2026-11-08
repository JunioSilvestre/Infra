# 07 — Gerenciador e Validador de Chaves GPG Corporativas e Tokens Hardware

## 🏢 Cenário de Negócios e Produção Real
Assinatura digital de commits de infraestrutura e releases de código por equipes de engenharia.

### ⚠️ O Problema Real
Chaves privadas expiram sem aviso ou são perdidas sem backup criptografado seguro.

## 🚀 Arquitetura e Engenharia em Bash
Inspeção de datas de expiração via 'gpg --list-keys --with-colons', alerta automático 30 dias antes do vencimento, geração de backup criptografado com chave de contingência e checagem de presença de token YubiKey via gpg --card-status.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`gpg, awk, date, tar`

## 📌 Exemplo de Execução CLI
```bash
./gpg_key_manager.sh --check-expiry 30 --backup-dir /secure/gpg_backup
```
