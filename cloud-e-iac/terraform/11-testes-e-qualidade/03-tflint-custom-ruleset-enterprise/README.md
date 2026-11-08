# Construção de Conjunto de Regras Customizadas Corporativas com TFLint

## 1. Cenário de Produção Real
Equipes frequentemente violavam convenções de nomes corporativos e usavam tipos de instâncias proibidas e caras na nuvem.

## 2. O Problema Real
Impor linting estático profundo validando atributos específicos de provedores de nuvem antes mesmo do `terraform plan` rodar.

## 3. Arquitetura e Engenharia da Solução
Configuração do `.tflint.hcl` com regras para AWS, checando presença de tags obrigatórias e bloqueando instâncias que não sejam da família Graviton.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** TFLint, Custom Rulesets, Static Analysis, AWS Provider Rules
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
tflint --init && tflint
```
