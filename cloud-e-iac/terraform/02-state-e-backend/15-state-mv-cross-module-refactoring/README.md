# Movimentação Transparente de Recursos entre Módulos sem Downtime

## 1. Cenário de Produção Real
Reestruturação de código movendo instâncias e balanceadores de dentro do módulo raiz para submódulos dedicados.

## 2. O Problema Real
Garantir que a refatoração do código não cause a deleção e recriação de servidores e bancos de dados em produção.

## 3. Arquitetura e Engenharia da Solução
Mapeamento detalhado e execução em lote de `terraform state mv aws_instance.web module.frontend.aws_instance.web`.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** terraform state mv, Code Modernization, Zero-Downtime Maintenance
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform state mv 'aws_instance.web[0]' 'module.compute.aws_instance.web[0]'
```
