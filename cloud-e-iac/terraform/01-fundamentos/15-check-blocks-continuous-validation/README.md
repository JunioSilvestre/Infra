# Validação Contínua de Saúde Pós-Provisionamento com Check Blocks (Terraform 1.5+)

## 1. Cenário de Produção Real
O Terraform concluía o provisionamento com sucesso, mas o serviço web retornava HTTP 500 porque a aplicação interna não subiu corretamente.

## 2. O Problema Real
Assegurar que a infraestrutura provisionada não apenas exista na API da nuvem, mas esteja funcionalmente ativa e respondendo dentro do esperado.

## 3. Arquitetura e Engenharia da Solução
Implementação de blocos `check "health_check" { data "http" ... assert { condition = ... } }` emitindo warnings sem quebrar o estado.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Terraform Check Blocks, Assertions, Post-Provisioning Verification
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform apply -auto-approve | grep 'Check block result'
```
