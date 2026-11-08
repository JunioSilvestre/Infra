# Inspeção Centralizada de Tráfego de Borda com AWS Network Firewall em CT

## 1. Cenário de Produção Real
Seguradora em Connecticut precisa inspecionar todo o tráfego de entrada e saída para a internet contra ameaças de malware e exfiltração.

## 2. O Problema Real
Centralizar a inspeção L3-L7 em uma VPC dedicada de inspeção utilizando roteamento avançado de Transit Gateway sem gargalos de banda.

## 3. Arquitetura e Engenharia da Solução
Deploy do AWS Network Firewall com regras Suricata compatíveis com assinaturas IDS/IPS e tabelas de rotas direcionando tráfego norte-sul.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** AWS Network Firewall, Suricata Rules, AWS Transit Gateway, VPC Routing
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
aws network-firewall describe-firewall --firewall-name central-inspection-fw
```
