# Conectividade Unificada de Filiais e Redes com Azure Virtual WAN

## 1. Cenário de Produção Real
Gerenciar dezenas de conexões de VPN de filiais em NY, Boston e Stamford conectadas a múltiplas VNets gerava sobrecarga e perda de visibilidade.

## 2. O Problema Real
Centralizar toda a infraestrutura de rede, roteamento de filiais e balanceamento global em um único serviço de malha gerenciado.

## 3. Arquitetura e Engenharia da Solução
Azure Virtual WAN com Virtual Hubs regionais, gateways de VPN e ExpressRoute integrados e roteamento Any-to-Any otimizado pela Microsoft.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Azure Virtual WAN, Virtual Hubs, Branch Connectivity, SD-WAN Integration
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
az network vwan show --name vwan-global-corp --resource-group rg-global-net
```
