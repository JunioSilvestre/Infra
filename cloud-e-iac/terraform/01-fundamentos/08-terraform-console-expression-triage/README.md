# Depuração Interativa de Expressões Complexas de HCL com Terraform Console

## 1. Cenário de Produção Real
Engenheiros gastavam dezenas de minutos rodando `plan` para testar funções de manipulação de strings, merges de maps e projeções de lista.

## 2. O Problema Real
Validar imediatamente o comportamento de funções HCL (`lookup`, `merge`, `flatten`, `try`, `can`) contra o estado real do provedor.

## 3. Arquitetura e Engenharia da Solução
Sessões de depuração com `terraform console` inspecionando saídas dinâmicas, validação de expressões regulares e decodificação de payloads JSON.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Terraform Console, HCL Built-in Functions, Rapid Prototyping
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
echo 'flatten([for k, v in local.subnets : v.cidrs])' | terraform console
```
