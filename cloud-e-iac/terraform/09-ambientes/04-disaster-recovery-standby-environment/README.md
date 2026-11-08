# Provisionamento de Ambiente de Contingência Warm-Standby na Região Secundária

## 1. Cenário de Produção Real
Seguradora em Hartford precisa garantir continuidade de negócios caso a região primária da AWS (Norte da Virgínia) sofra um apagão completo.

## 2. O Problema Real
Manter uma infraestrutura mínima operando em modo Warm-Standby na região de Ohio, capaz de escalar para capacidade total em minutos.

## 3. Arquitetura e Engenharia da Solução
Módulos parametrizados com flag `standby_mode = true` que mantêm instâncias mínimas e réplicas de leitura prontas para promoção.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Disaster Recovery, Warm-Standby Architecture, Multi-Region Resilience, RTO/RPO
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform apply -var-file=standby-region.tfvars
```
