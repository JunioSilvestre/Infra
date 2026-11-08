# Conectividade Híbrida Resiliente com AWS Direct Connect e VPN IPsec de Contingência

## 1. Cenário de Produção Real
Queda de fibra óptica física entre o datacenter bancário em Connecticut e a região da AWS em Virgínia paralisaria as agências.

## 2. O Problema Real
Garantir comutação automática de tráfego (failover transparente) em caso de rompimento físico do link de Direct Connect.

## 3. Arquitetura e Engenharia da Solução
AWS Direct Connect com BGP dinâmico combinado com conexão AWS Site-to-Site VPN configurada como rota secundária de custo mais alto.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** AWS Direct Connect, Site-to-Site VPN, BGP Dynamic Routing, Transit Gateway
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
aws directconnect describe-virtual-interfaces
```
