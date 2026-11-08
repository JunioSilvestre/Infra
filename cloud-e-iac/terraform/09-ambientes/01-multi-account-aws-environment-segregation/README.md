# Segregação de Ambientes em Contas AWS Isoladas (Dev, Staging, Prod)

## 1. Cenário de Produção Real
Fintech em Manhattan com risco de que testes de desenvolvedores afetem bancos de dados de produção devido ao compartilhamento de contas de nuvem.

## 2. O Problema Real
Garantir isolamento absoluto de segurança, cotas de faturamento e limites de recursos dividindo a infraestrutura em contas dedicadas.

## 3. Arquitetura e Engenharia da Solução
Estrutura de diretórios desacoplada com backends de estado dedicados, credenciais IAM distintas e parametrização estrita por ambiente.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** AWS Multi-Account, Blast Radius Isolation, Terraform Directory Structure
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform -chdir=environments/prod plan -var-file=prod.tfvars
```
