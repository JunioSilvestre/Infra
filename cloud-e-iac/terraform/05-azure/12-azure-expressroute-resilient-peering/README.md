# Conectividade de Alta Velocidade On-Premise com Azure ExpressRoute e Peering Privado

## 1. Cenário de Produção Real
Tráfego massivo de dados financeiros entre o datacenter legado em Connecticut e o Azure não podia trafegar pela internet pública.

## 2. O Problema Real
Estabelecer circuito de fibra dedicado de 10Gbps com redundância ativa-ativa e criptografia MACsec em conformidade regulatória.

## 3. Arquitetura e Engenharia da Solução
Circuito ExpressRoute com peering privado, conexão a Virtual Network Gateway de alta vazão e monitoramento de perda de pacotes.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Azure ExpressRoute, BGP Peering, Virtual Network Gateway, MACsec Encryption
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
az network express-route show --name er-circuit-corp --resource-group rg-network
```
