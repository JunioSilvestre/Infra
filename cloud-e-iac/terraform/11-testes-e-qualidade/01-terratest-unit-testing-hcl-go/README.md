# Testes Unitários de Componentes de Infraestrutura com Terratest em Go

## 1. Cenário de Produção Real
Fintech em NY necessita validar que seus módulos criem security groups com portas corretas sem depender de conferência manual em console.

## 2. O Problema Real
Automatizar asserções de infraestrutura com código compilado em Go garantindo integridade de parâmetros antes do merge de código.

## 3. Arquitetura e Engenharia da Solução
Suíte de testes utilizando Terratest (`terraform.InitAndPlan`, `terraform.RequireNewResource`) validando outputs e contagens de recursos.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Terratest, Go, HCL Validation, Unit Testing, CI Integration
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
go test -v -run TestVpcModule ./test/...
```
