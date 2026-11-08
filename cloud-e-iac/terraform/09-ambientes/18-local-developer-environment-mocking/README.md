# Ambiente Local de Desenvolvimento Espelhado com LocalStack e Docker

## 1. Cenário de Produção Real
Desenvolvedores gastavam orçamento de nuvem durante testes preliminares de código que podiam ser executados localmente.

## 2. O Problema Real
Permitir a execução dos manifestos Terraform localmente na máquina do desenvolvedor apontando para serviços emulados da AWS.

## 3. Arquitetura e Engenharia da Solução
Configuração de endpoints customizados no provider AWS apontando para o LocalStack rodando em containers Docker locais.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** LocalStack, Local Development Parity, Mocked Cloud Services, FinOps
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform -chdir=localstack init && terraform -chdir=localstack apply
```
