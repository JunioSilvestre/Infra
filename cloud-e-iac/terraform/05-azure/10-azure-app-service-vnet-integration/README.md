# Hospedagem Corporativa Segura com Azure App Service e Integração VNet Regional

## 1. Cenário de Produção Real
Aplicações corporativas internas precisavam rodar em PaaS gerenciado, mas precisavam se comunicar com bancos de dados privados sem sair para a internet.

## 2. O Problema Real
Conectar instâncias de App Service diretamente dentro das subnets privadas da rede corporativa com controle total de tráfego de saída.

## 3. Arquitetura e Engenharia da Solução
App Service Plan Linux com VNet Integration ativada, bloqueio de acesso público e Service Endpoints configurados para banco de dados.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Azure App Service, Regional VNet Integration, Azure Private Endpoints, PaaS Security
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
az webapp vnet-integration list --name app-internal-portal --resource-group rg-apps
```
