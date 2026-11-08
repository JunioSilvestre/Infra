# Módulo de Cluster AWS OpenSearch com VPC Peering e Acesso via IAM

## 1. Cenário de Produção Real
Sistemas de centralização de logs demandavam clusters de busca elásticos com nós dedicados de master e armazenamento em camadas (UltraWarm).

## 2. O Problema Real
Padronizar a criação de clusters OpenSearch seguros, integrados à rede privada e com rotação automática de índices.

## 3. Arquitetura e Engenharia da Solução
Módulo OpenSearch com nó master dedicado, criptografia de nó a nó, controle de acesso granular via IAM e snapshots diários no S3.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** AWS OpenSearch, Log Aggregation, UltraWarm Storage, SAML Authentication
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform apply -target=module.logging_search
```
