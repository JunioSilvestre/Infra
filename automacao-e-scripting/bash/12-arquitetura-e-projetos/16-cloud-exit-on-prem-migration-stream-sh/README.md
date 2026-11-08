# 16 — Pipeline de Repatriação de Dados e Migração Cloud-to-On-Premise sem Downtime

## 🏢 Cenário de Negócios e Produção Real
Estratégia de Cloud Exit: migração de terabytes de dados da AWS/Azure de volta para data center próprio local para corte de custos.

### ⚠️ O Problema Real
Transferir terabytes via internet com comandos simples quebra por timeouts e consome semanas de tempo.

## 🚀 Arquitetura e Engenharia em Bash
Sincronização em blocos paralelos com rsync sobre múltiplos túneis SSH concorrentes, limitação de banda adaptativa para não impactar a operação atual, validação contínua de checksums e sincronização final em corte atômico de minutos.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`rsync, ssh, parallel, sha256sum, pv`

## 📌 Exemplo de Execução CLI
```bash
./cloud_repatriate.sh --cloud-source s3://data-prod --dest /mnt/local_san --concurrency 8
```
