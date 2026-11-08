# 12 — Orquestrador de Backup Incremental Criptografado com Duplicity e GPG

## 🏢 Cenário de Negócios e Produção Real
Rotina segura de backup corporativo de dados críticos para provedores cloud (S3, B2, Azure).

### ⚠️ O Problema Real
Backups desprotegidos expõem dados a vazamento se o bucket na nuvem for acessado indevidamente.

## 🚀 Arquitetura e Engenharia em Bash
Execução de backup diferencial com Duplicity, criptografia ponta a ponta com chave GPG corporativa, expurgo automático de cópias mais antigas que 90 dias com 'remove-older-than 90D' e teste de restauração de amostra.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`duplicity, gpg, aws, date`

## 📌 Exemplo de Execução CLI
```bash
./encrypted_backup.sh --source /data/db --dest s3://corp-backups/db --encrypt-key '$GPG_KEY'
```
