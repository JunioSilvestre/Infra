# Refatoração de Infraestrutura com for_each para Eliminação de Destruições em Cascata

## 1. Cenário de Produção Real
O uso de `count` para provisionar instâncias causava a destruição e recriação de todas as instâncias subsequentes se um item intermediário da lista fosse removido.

## 2. O Problema Real
Garantir endereçamento estável de recursos no estado do Terraform por chaves únicas e imutáveis em vez de índices numéricos voláteis.

## 3. Arquitetura e Engenharia da Solução
Migração completa de listas com `count` para maps associativos com `for_each` utilizando blocos `moved` para preservar recursos existentes.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Terraform for_each, Moved Blocks, State Preservation, Refactoring Patterns
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform state list | grep -E '\["[a-zA-Z0-9_-]+"\]'
```
