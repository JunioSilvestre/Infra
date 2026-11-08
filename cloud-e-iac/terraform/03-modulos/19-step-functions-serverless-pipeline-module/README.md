# Módulo de Orquestração de Fluxos Serverless com AWS Step Functions e Lambda

## 1. Cenário de Produção Real
Processamento de sinistros em seguradoras em Hartford envolvia 8 passos assíncronos que falhavam sem rastreabilidade clara.

## 2. O Problema Real
Provisionar máquinas de estados visuais com controle de retry exponencial, tratamento de erros e integração com Lambdas sem código duplicado.

## 3. Arquitetura e Engenharia da Solução
Módulo Step Functions com definição declarativa de estado em Amazon States Language (ASL) renderizada via templates HCL e papéis IAM.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** AWS Step Functions, AWS Lambda, Serverless Architecture, Disaster Recovery
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform apply -target=module.claims_workflow
```
