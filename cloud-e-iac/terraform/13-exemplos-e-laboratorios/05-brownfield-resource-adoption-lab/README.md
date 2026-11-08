# Laboratório Prático de Adoção de Infraestrutura Legada com Bloco import

## 1. Cenário de Produção Real
Centenas de instâncias EC2, VPCs e bancos de dados foram criados no passado sem Terraform e precisam entrar sob governança.

## 2. O Problema Real
Dominar a utilização do bloco declarativo `import` (Terraform 1.5+) e geração automática de código sem risco de parada dos serviços.

## 3. Arquitetura e Engenharia da Solução
Criação de recursos avulsos via AWS CLI e execução controlada de plano de importação gerando arquivos HCL padronizados.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Terraform 1.5+ Import Blocks, Brownfield Migration, Code Generation, AWS CLI
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform plan -generate-config-out=imported_infra.tf
```
