# Projeção e Agregação de Atributos de Recursos com Splat Expressions e Flatten

## 1. Cenário de Produção Real
Coleta de dezenas de IDs de subnets criadas dinamicamente para injeção em um Application Load Balancer resultava em listas aninhadas inacessíveis.

## 2. O Problema Real
Transformar estruturas de dados complexas de n-dimensões em listas lineares limpas consumidas diretamente por outros recursos de infraestrutura.

## 3. Arquitetura e Engenharia da Solução
Uso de splat expressions `aws_subnet.private[*].id` combinado com `flatten()` e `compact()` para filtragem de elementos nulos.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** HCL Splat Syntax, Data Projection, Type Coercion, Clean Code
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform output -json private_subnet_ids | jq
```
