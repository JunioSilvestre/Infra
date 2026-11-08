# Rastreamento de Recursos Órfãos e Fora de Governança com driftctl

## 1. Cenário de Produção Real
Engenheiros criavam recursos manualmente no console da nuvem que ficavam esquecidos, gerando custos e brechas de segurança.

## 2. O Problema Real
Mapear todos os recursos reais existentes na conta da nuvem e apontar exatamente quais NÃO estão sob controle do Terraform.

## 3. Arquitetura e Engenharia da Solução
Execução do `driftctl` comparando o estado do Terraform com a API da AWS e gerando relatórios de cobertura de código.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** driftctl, Unmanaged Infrastructure Detection, Cloud Hygiene, Shadow IT Prevention
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
driftctl scan --from tfstate+s3://tf-state-corp/prod.tfstate
```
