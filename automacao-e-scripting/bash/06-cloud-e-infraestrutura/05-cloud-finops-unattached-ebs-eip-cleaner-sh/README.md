# 05 — FinOps: Limpador de Volumes EBS Desanexados e IPs Elásticos Ociosos

## 🏢 Cenário de Negócios e Produção Real
Auditoria contínua de custos em contas AWS de médias e grandes empresas para cortar desperdício.

### ⚠️ O Problema Real
Desenvolvedores destroem instâncias EC2 mas esquecem volumes EBS e Elastic IPs órfãos acumulando milhares de dólares de cobrança.

## 🚀 Arquitetura e Engenharia em Bash
Varredura em todas as regiões AWS via AWS CLI buscando volumes com status 'available' e Elastic IPs não associados, cálculo do valor acumulado desperdiçado, criação de snapshot de segurança e deleção dos volumes ociosos.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`aws, jq, awk, date`

## 📌 Exemplo de Execução CLI
```bash
./finops_ebs_cleaner.sh --regions 'us-east-1,us-west-2' --create-snapshot --delete
```
