# Importação Declarativa de Infraestrutura Legada com Bloco import (Terraform 1.5+)

## 1. Cenário de Produção Real
Dezenas de instâncias EC2, VPCs e bancos RDS foram criados manualmente via console da AWS no passado e precisavam entrar sob governança de IaC.

## 2. O Problema Real
Trazer os recursos para o controle do Terraform sem gerar código manual linha por linha e sem risco de alteração durante a importação.

## 3. Arquitetura e Engenharia da Solução
Uso do bloco declarativo `import { to = ...; id = ... }` combinado com a flag `-generate-config-out=generated.tf` para criação automática do HCL.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Terraform 1.5+ Import Blocks, Brownfield Migration, Code Generation
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform plan -generate-config-out=generated_resources.tf
```
