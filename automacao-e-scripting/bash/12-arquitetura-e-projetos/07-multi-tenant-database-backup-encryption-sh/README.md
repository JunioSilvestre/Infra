# 07 — Orquestrador de Backup e Criptografia Isolada por Tenant para Bancos Multi-Tenant

## 🏢 Cenário de Negócios e Produção Real
Bancos de dados SaaS com centenas de clientes onde cada cliente exige chaves de criptografia e backups completamente segregados.

### ⚠️ O Problema Real
Restaurar a base inteira para recuperar os dados de apenas um cliente que apagou uma tabela acidentalmente é inviável.

## 🚀 Arquitetura e Engenharia em Bash
Varredura de tenants, extração de dumps lógicos isolados por schema/database via pg_dump/mysqldump, criptografia de cada arquivo com a chave GPG/KMS exclusiva daquele tenant e envio para buckets segregados na nuvem.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`pg_dump, openssl, aws, gzip, xargs`

## 📌 Exemplo de Execução CLI
```bash
./tenant_backup.sh --all-tenants --concurrency 4 --encrypt-per-tenant
```
