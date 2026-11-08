# Módulo de Cache Distribuído com AWS ElastiCache Redis e Multi-AZ Failover

## 1. Cenário de Produção Real
APIs de pagamentos de alta escala sofriam lentidões de banco sem um cluster de cache confiável com replicação em tempo real.

## 2. O Problema Real
Provisionar clusters Redis com clustering ativado, criptografia em trânsito e em repouso e substituição automática de nós com falha.

## 3. Arquitetura e Engenharia da Solução
Módulo ElastiCache encapsulando Replication Group, Subnet Group, Parameter Group com maxmemory-policy e alertas CloudWatch de uso de CPU.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** AWS ElastiCache Redis, In-Memory Caching, Multi-AZ Failover, CloudWatch
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform apply -target=module.redis_cache
```
