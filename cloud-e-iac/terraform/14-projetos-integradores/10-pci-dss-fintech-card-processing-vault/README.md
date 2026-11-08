# Cofre Blindado de Processamento de Pagamentos e Cartões com Isolamento PCI Nível 1

## 1. Cenário de Produção Real
Gateway de pagamento financeiro processando milhões de transações de crédito precisa de um ambiente completamente isolado de rede.

## 2. O Problema Real
Garantir que nenhum servidor com dados de cartão se comunique diretamente com a internet ou com ambientes não certificados.

## 3. Arquitetura e Engenharia da Solução
VPC blindada sem Internet Gateway, comunicação exclusivamente via VPC Endpoints privados, criptografia KMS de chave dupla e auditoria contínua.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Terraform, PCI-DSS Level 1 Architecture, AWS KMS, VPC Endpoints, Security Isolation
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform apply -target=module.pci_payment_vault
```
