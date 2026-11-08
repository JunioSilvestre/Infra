# 08 — Gerenciador de Snapshots e Rotação de Contêineres de Dados no Azure Blob Storage

## 🏢 Cenário de Negócios e Produção Real
Proteção contínua de bases de dados analíticas e backups hospedados no Microsoft Azure contra corrupção e ransomware.

### ⚠️ O Problema Real
Manter snapshots infinitos estoura o limite de armazenamento da conta e dificulta a restauração.

## 🚀 Arquitetura e Engenharia em Bash
Geração diária de snapshots de blobs via Azure CLI com metadados de data e hash, aplicação de regras de purga para snapshots com mais de 30 dias e geração de log de trilha de auditoria para compliance.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`az, jq, date, awk`

## 📌 Exemplo de Execução CLI
```bash
./azure_blob_snapshots.sh --account-name storprod --container backups --retain-days 30
```
