# Operação de Containers sem Servidor com Amazon ECS Fargate e Graviton

## 1. Cenário de Produção Real
Equipes queriam os benefícios de conteinerização sem a sobrecarga operacional de gerenciar o plano de controle de nós do Kubernetes.

## 2. O Problema Real
Executar tarefas de containers com isolamento total de hardware em nível de kernel, dimensionamento sob demanda e baixo custo.

## 3. Arquitetura e Engenharia da Solução
Cluster ECS com capacidade Fargate Spot, task definitions configuradas para arquitetura ARM64 (Graviton) e Service Connect para service discovery.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Amazon ECS, AWS Fargate, AWS Graviton (ARM64), ECS Service Connect
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
aws ecs describe-services --cluster prod-cluster --services auth-service
```
