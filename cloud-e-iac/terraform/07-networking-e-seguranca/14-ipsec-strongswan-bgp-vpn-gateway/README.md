# Gateway VPN IPSec com strongSwan e Roteamento BGP para Redes Corporativas

## 1. Cenário de Produção Real
Conectar filiais da empresa em Boston e Stamford a datacenters de parceiros que exigem autenticação baseada em chaves pré-compartilhadas e BGP.

## 2. O Problema Real
Prover uma solução de conectividade robusta, de baixo custo e com criptografia AES-256-GCM em tempo real.

## 3. Arquitetura e Engenharia da Solução
Deploy de instâncias Linux executando strongSwan integrado com BIRD para troca dinâmica de rotas via BGP sobre túneis VTI (Virtual Tunnel Interface).

## 4. Ferramentas e Tecnologias
- **Ecossistema:** strongSwan, IPSec (IKEv2), BGP, VTI Interfaces, Linux Networking
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
swanctl --list-sas && ip route show table 220
```
