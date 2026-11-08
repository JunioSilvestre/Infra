# Implementação do Framework Nativo de Testes de HCL (terraform test)

## 1. Cenário de Produção Real
O uso de frameworks externos como Terratest demandava conhecimento avançado de Go por toda a equipe de infraestrutura.

## 2. O Problema Real
Escrever testes unitários e de integração declarativos diretamente em HCL utilizando a funcionalidade oficial introduzida no Terraform 1.6+.

## 3. Arquitetura e Engenharia da Solução
Criação de arquivos `.tftest.hcl` com blocos `run` executando comandos de plan e apply com asserções nativas (`assert { condition = ... }`).

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Terraform 1.6+ Native Testing (terraform test), HCL Testing, Assertion Blocks
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform test -verbose
```
