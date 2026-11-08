# Motor Automatizado de Expurgamento de Recursos Ociosos e Desperdiçados

## 1. Cenário de Produção Real
Volumes EBS desanexados, Elastic IPs não utilizados e snapshots de bancos antigos geravam milhares de dólares em custos desnecessários.

## 2. O Problema Real
Identificar e expurgar automaticamente recursos esquecidos mantendo a conta da nuvem enxuta e dentro do orçamento.

## 3. Arquitetura e Engenharia da Solução
Deploy de rotinas serverless provisionadas via Terraform que escaneiam recursos órfãos e disparam limpeza com aprovação do dono.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Cloud FinOps, Waste Reduction, Resource Hygiene, Cost Optimization
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
python scan_idle_resources.py --region us-east-1
```
