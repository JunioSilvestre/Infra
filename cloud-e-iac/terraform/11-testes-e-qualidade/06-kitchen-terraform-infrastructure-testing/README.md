# Testes de Infraestrutura com Kitchen-Terraform e InSpec em Ruby

## 1. Cenário de Produção Real
Equipes com cultura de automação de testes queriam validar o estado de sistemas operacionais provisionados por máquinas na nuvem.

## 2. O Problema Real
Subir a máquina com Terraform e validar se pacotes, serviços e portas estão rodando no sistema operacional via InSpec.

## 3. Arquitetura e Engenharia da Solução
Configuração do `.kitchen.yml` orquestrando o ciclo de vida do Terraform e executando testes de conformidade com InSpec.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Kitchen-Terraform, InSpec, Ruby, Infrastructure Acceptance Testing
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
bundle exec kitchen test
```
