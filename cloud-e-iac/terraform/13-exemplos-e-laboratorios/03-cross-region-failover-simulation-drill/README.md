# Simulação Prática de Failover de Região Completa em Menos de 15 Minutos

## 1. Cenário de Produção Real
Treinamento de equipe para acionar o plano de desastre simulando a queda total da região us-east-1.

## 2. O Problema Real
Validar se a automação é capaz de promover réplicas de banco de dados e chavear o tráfego de DNS global de forma confiável.

## 3. Arquitetura e Engenharia da Solução
Laboratório com script simulando corte de conectividade regional, promoção de réplica Aurora em us-east-2 e atualização do Route53.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Disaster Recovery Drill, Aurora Failover, Route53 Health Checks, SRE Drills
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
aws rds failover-db-cluster --db-cluster-identifier prod-cluster
```
