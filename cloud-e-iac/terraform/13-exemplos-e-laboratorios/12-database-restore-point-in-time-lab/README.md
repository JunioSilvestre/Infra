# Laboratório de Restauração de Banco de Dados a Partir de Ponto no Tempo (PITR)

## 1. Cenário de Produção Real
Um comando malicioso ou erro de código apagou uma tabela crítica do banco de dados de produção às 14h32.

## 2. O Problema Real
Restaurar o banco de dados exatamente no estado em que estava às 14h31 utilizando os logs de transação contínuos da nuvem.

## 3. Arquitetura e Engenharia da Solução
Simulação de descarte de dados, consulta de pontos de restauração e execução do comando de provisionamento de banco restaurado via código.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Point-in-Time Recovery (PITR), AWS RDS PostgreSQL, Database Disaster Recovery
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
aws rds restore-db-instance-to-point-in-time --source-db-instance-identifier prod-db --target-db-instance-identifier restored-db
```
