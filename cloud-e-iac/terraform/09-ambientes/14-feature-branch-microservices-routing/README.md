# Roteamento Dinâmico de Ambientes de Branch de Microsserviços sem Duplicação

## 1. Cenário de Produção Real
Duplicar toda a malha de 50 microsserviços para testar uma pequena alteração em um único serviço era caro e lento.

## 2. O Problema Real
Manter um ambiente base compartilhado e rotear apenas as requisições da feature branch para o container específico sob teste.

## 3. Arquitetura e Engenharia da Solução
Infraestrutura de Ingress e Service Mesh parametrizada via Terraform com regras de encaminhamento baseadas em cabeçalhos HTTP.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Feature Branch Environments, Dynamic Request Routing, Virtual Environments
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform apply -target=module.branch_router
```
