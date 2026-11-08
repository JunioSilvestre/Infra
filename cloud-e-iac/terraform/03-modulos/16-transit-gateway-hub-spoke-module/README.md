# Módulo de Conectividade de Redes com AWS Transit Gateway em Arquitetura Hub-and-Spoke

## 1. Cenário de Produção Real
Conectar 50 VPCs de diferentes áreas com peering ponto a ponto gerava uma malha incontrolável de mais de 1.200 conexões de rede.

## 2. O Problema Real
Centralizar o tráfego de rede corporativa através de um roteador centralizado de alta performance com tabelas de roteamento dedicadas.

## 3. Arquitetura e Engenharia da Solução
Módulo Transit Gateway gerenciando VPC Attachments, propagação seletiva de rotas e isolamento entre ambientes de Dev e Produção.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** AWS Transit Gateway, Hub-and-Spoke Topology, Cloud Networking
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform plan -target=module.transit_gateway_hub
```
