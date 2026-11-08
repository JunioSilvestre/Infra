# Arquitetura de Nuvem Híbrida Conectando Datacenter On-Premise e AWS EKS

## 1. Cenário de Produção Real
Legado de mainframe bancário em Connecticut precisa se comunicar em tempo real com novos microsserviços em nuvem com latência submilisegundo.

## 2. O Problema Real
Integrar a malha de rede de containers da nuvem diretamente com a rede física de roteadores e firewalls do datacenter local.

## 3. Arquitetura e Engenharia da Solução
AWS Direct Connect com BGP dinâmico, Amazon VPC CNI estendendo IPs reais de rede corporativa para cada pod no Kubernetes.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** AWS EKS, AWS Direct Connect, Amazon VPC CNI, BGP Routing, IPAM
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
aws directconnect describe-virtual-interfaces && kubectl get nodes -o wide
```
