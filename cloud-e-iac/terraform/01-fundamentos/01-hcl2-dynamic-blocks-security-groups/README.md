# Construção de Security Groups Dinâmicos com HCL2 Dynamic Blocks em NYC

## 1. Cenário de Produção Real
Fintech em Wall Street precisa gerenciar regras de firewall de centenas de microsserviços sem duplicação de blocos de código.

## 2. O Problema Real
Reduzir milhares de linhas de HCL repetitivas permitindo a injeção declarativa de listas complexas de portas e CIDRs autorizados.

## 3. Arquitetura e Engenharia da Solução
Uso de blocos `dynamic ingress` iterando sobre maps de objetos tipados com condicionais de ambiente e anotações de descrição para auditoria.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Terraform 1.7+, AWS Provider, HCL2 Dynamic Blocks, Terraform Console
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform plan -target=aws_security_group.ingress_mesh -var-file=prod.tfvars
```
