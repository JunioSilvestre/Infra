# Substituição do null_resource pelo Recurso Nativo terraform_data

## 1. Cenário de Produção Real
O uso de `null_resource` demandava download de um provider separado (`hashicorp/null`), atrasando pipelines de CI e criando dependência externa.

## 2. O Problema Real
Adotar recursos de gerenciamento de ciclo de vida e gatilhos embutidos diretamente no core do Terraform sem dependência de providers terceiros.

## 3. Arquitetura e Engenharia da Solução
Uso de `terraform_data` com atributo `input` e `triggers_replace` para gerenciamento de bootstrap e mutações de lifecycle limpas.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Terraform 1.4+ terraform_data, Built-in Core Resources, Pipeline Speed
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform plan -target=terraform_data.cluster_bootstrap
```
