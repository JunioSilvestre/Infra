# Plataforma de Borda (Edge Computing) para Telecomunicações com K3s em CT

## 1. Cenário de Produção Real
Operadora de telecomunicações operando torres celulares e datacenters de borda em Connecticut necessita gerenciar clusters ultraleves.

## 2. O Problema Real
Capacidade de operar em hardware com recursos escassos, conexões intermitentes e gerenciamento centralizado a partir do escritório central.

## 3. Arquitetura e Engenharia da Solução
Implementação com K3s, Rancher Fleet para gerenciamento centralizado de GitOps e tunnels WireGuard seguros entre as bordas e a matriz.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** K3s, Rancher Fleet, WireGuard VPN, Edge Computing, Containerd
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
fleet-cli target-summary && k3s kubectl get nodes
```
