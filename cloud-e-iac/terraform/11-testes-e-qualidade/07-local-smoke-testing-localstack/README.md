# Testes de Fumaça (Smoke Tests) Rápidos e sem Custos com LocalStack

## 1. Cenário de Produção Real
Engenheiros queriam validar se seus módulos conseguiam ser aplicados e destruídos com sucesso sem gastar orçamento na nuvem.

## 2. O Problema Real
Prover um ambiente de validação local que emula serviços como S3, DynamoDB, SQS e IAM em milissegundos na máquina do desenvolvedor.

## 3. Arquitetura e Engenharia da Solução
Execução de suítes de testes automatizados apontando para container LocalStack via overrides temporários de provedor.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** LocalStack, Smoke Testing, Mock Infrastructure, Developer Velocity
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform test -var-file=localstack.tfvars
```
