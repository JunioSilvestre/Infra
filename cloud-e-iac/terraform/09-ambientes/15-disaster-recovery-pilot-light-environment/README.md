# Ambiente Pilot Light para Recuperação de Desastres com RPO Quase Zero

## 1. Cenário de Produção Real
Manter uma réplica completa de produção o tempo todo era proibitivo para o orçamento da empresa.

## 2. O Problema Real
Manter apenas o banco de dados e os dados críticos sincronizados em tempo real (Pilot Light), provisionando a computação sob demanda.

## 3. Arquitetura e Engenharia da Solução
Módulos Terraform com dados replicados continuamente e scripts de inicialização rápida de instâncias e clusters em caso de desastre.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Disaster Recovery, Pilot Light Pattern, AWS CloudEndure, FinOps DR
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform apply -var='activate_pilot_light_compute=false'
```
