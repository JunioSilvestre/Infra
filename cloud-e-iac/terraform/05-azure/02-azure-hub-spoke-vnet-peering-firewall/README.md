# Topologia de Rede Hub-and-Spoke com Azure Firewall e VNet Peering

## 1. Cenário de Produção Real
Datacenter em Nova York migrando cargas para a região East US necessita inspecionar todo o tráfego inter-redes e saída para internet.

## 2. O Problema Real
Evitar conexões diretas descontroladas entre redes virtuais e forçar o tráfego através de um appliance de segurança centralizado.

## 3. Arquitetura e Engenharia da Solução
VNet Hub com Azure Firewall Premium e Gateway de VPN/ExpressRoute, conectada via VNet Peering a Spoke VNets com UDRs (User Defined Routes).

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Azure Virtual Network, VNet Peering, Azure Firewall Premium, User Defined Routes (UDR)
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
az network firewall show --name hub-firewall --resource-group rg-network-hub
```
