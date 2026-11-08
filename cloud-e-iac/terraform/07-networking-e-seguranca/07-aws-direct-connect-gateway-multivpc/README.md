# Conectividade Centralizada de Datacenter com AWS Direct Connect Gateway

## 1. Cenário de Produção Real
Múltiplas contas e VPCs precisavam acessar o datacenter físico corporativo sem criar dezenas de conexões virtuais caras individuais.

## 2. O Problema Real
Centralizar o tráfego de rede física on-premise permitindo que até 30 VPCs em diferentes regiões se comuniquem por um único Direct Connect Gateway.

## 3. Arquitetura e Engenharia da Solução
Configuração do AWS Direct Connect Gateway associado a múltiplos Virtual Private Gateways (VGW) e tabelas de rotas BGP anunciadas.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** AWS Direct Connect Gateway, Virtual Private Gateway, BGP ASN, Hybrid Cloud Architecture
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
aws directconnect describe-direct-connect-gateways
```
