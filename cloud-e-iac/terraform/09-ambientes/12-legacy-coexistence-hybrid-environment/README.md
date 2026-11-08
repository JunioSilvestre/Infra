# Ambiente de Coexistência Híbrida entre Sistemas Legados e Nova Plataforma

## 1. Cenário de Produção Real
A migração de sistemas mainframe de seguros em Hartford levava anos, exigindo que a nova infraestrutura conviva com o legado.

## 2. O Problema Real
Estabelecer túneis dedicados, roteamento BGP e sincronização de dados entre a infraestrutura moderna em nuvem e os servidores legados.

## 3. Arquitetura e Engenharia da Solução
Módulo de conectividade híbrida com regras de firewall direcionadas e balanceadores de carga integrando IPs on-premise como targets.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Hybrid Cloud Coexistence, Legacy Modernization, AWS Direct Connect Routing
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform apply -target=module.hybrid_integration
```
