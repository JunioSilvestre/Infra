# Integração de Malha SD-WAN Cisco Meraki com Trânsito em Nuvem no Azure e AWS

## 1. Cenário de Produção Real
Empresa com mais de 80 escritórios locais precisava integrar sua rede SD-WAN corporativa de forma transparente com os ambientes de nuvem pública.

## 2. O Problema Real
Eliminar conexões VPN manuais entre filiais e a nuvem provisionando roteamento automatizado de alta performance.

## 3. Arquitetura e Engenharia da Solução
Deploy de appliances virtuais Meraki vMX em subnets de trânsito conectadas via BGP dinâmico com o Azure Virtual WAN e AWS Transit Gateway.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Cisco Meraki SD-WAN, vMX Virtual Appliance, Cloud On-Ramp, BGP Routing
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform plan -target=module.sdwan_cloud_interconnect
```
