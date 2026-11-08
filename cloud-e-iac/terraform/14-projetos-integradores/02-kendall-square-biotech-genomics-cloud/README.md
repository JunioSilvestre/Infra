# Plataforma em Nuvem para Sequenciamento Genômico em Lote em Cambridge (MA)

## 1. Cenário de Produção Real
Empresa de biotecnologia em Kendall Square processando terabytes de dados biológicos diários para descoberta de medicamentos.

## 2. O Problema Real
Prover infraestrutura de computação de alto desempenho (HPC) elástica com instâncias Spot, storage FSx for Lustre e orquestração de containers.

## 3. Arquitetura e Engenharia da Solução
Módulos integrados provisionando cluster EKS com nós equipados com GPU, buckets S3 com tiering para Glacier e filas assíncronas SQS.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Terraform, AWS EKS, FSx for Lustre, EC2 Spot Instances, AWS Batch
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform apply -target=module.genomics_pipeline_platform
```
