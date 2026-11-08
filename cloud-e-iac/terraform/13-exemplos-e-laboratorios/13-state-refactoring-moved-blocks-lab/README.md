# Laboratório de Refatoração de Monólitos de Código usando Moved Blocks

## 1. Cenário de Produção Real
Modernizar um repositório legado antigo renomeando recursos e modularizando blocos sem causar destruição de nenhum servidor.

## 2. O Problema Real
Aplicar a funcionalidade declarativa de `moved` blocks do Terraform eliminando comandos manuais arriscados na CLI.

## 3. Arquitetura e Engenharia da Solução
Criação de módulo desacoplado, mapeamento de caminhos antigos para novos no bloco moved e validação via `plan` limpo de alterações.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Terraform Moved Blocks, Code Refactoring, Zero-Downtime Migration, Clean HCL
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform plan | grep 'has moved to'
```
