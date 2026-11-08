# Malha de VPN Criptografada com Roteamento Dinâmico BGP e WireGuard

## 1. Cenário de Produção Real
Interligar múltiplos escritórios corporativos em NY, Boston e Stamford em uma malha de rede com recuperação automática em caso de queda de rota.

## 2. O Problema Real
Túneis IPSec legados eram pesados e difíceis de manter; é necessário um protocolo ultraleve e veloz com comutação autônoma de rotas.

## 3. Arquitetura e Engenharia da Solução
Deploy de malha WireGuard interconectando servidores Linux com daemon BIRD / FRRouting (FRR) anunciando rotas internas dinamicamente via BGP.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** WireGuard, FRRouting (FRR), BGP Dynamic Routing, Any-to-Any Network Mesh
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
vtysh -c 'show ip bgp summary' && wg show
```
