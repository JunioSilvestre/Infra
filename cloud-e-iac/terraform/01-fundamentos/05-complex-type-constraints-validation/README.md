# Validação Estrita de Contratos de Variáveis com Custom Validation Rules

## 1. Cenário de Produção Real
Equipes passavam parâmetros mal formatados (como CIDRs inválidos ou nomes fora do padrão corporativo) quebrando o provisionamento após 20 minutos de espera.

## 2. O Problema Real
Validar o formato e semântica das variáveis no momento exato do `terraform validate`, antes de qualquer chamada de API aos provedores.

## 3. Arquitetura e Engenharia da Solução
Definição de variáveis com `type = object({...})` e blocos `validation { condition = can(regex(...)) }` com mensagens de erro autoexplicativas.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Terraform Type Constraints, Regex Validations, Custom Error Messages
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform validate -no-color
```
