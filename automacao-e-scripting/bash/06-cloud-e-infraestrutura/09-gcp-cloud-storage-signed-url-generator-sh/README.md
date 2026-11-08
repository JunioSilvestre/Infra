# 09 — Gerador Automatizado de Signed URLs Temporárias para Google Cloud Storage

## 🏢 Cenário de Negócios e Produção Real
Distribuição segura de grandes arquivos de log e dumps de banco de dados para parceiros externos sem abrir permissão pública no bucket.

### ⚠️ O Problema Real
Tornar buckets públicos por preguiça causa vazamentos de dados de grandes proporções.

## 🚀 Arquitetura e Engenharia em Bash
Assinatura criptográfica usando chaves de Service Account do GCP via gcloud / gsutil signurl ou openssl puro, fixando tempo de expiração curto (15 minutos) e método HTTP permitido (GET/PUT).

## 🛠️ Ferramentas Nativas Linux Utilizadas
`gcloud, gsutil, openssl, date`

## 📌 Exemplo de Execução CLI
```bash
./gcs_signed_url.sh --bucket secret-dumps --object dump.sql.gz --duration 15m
```
