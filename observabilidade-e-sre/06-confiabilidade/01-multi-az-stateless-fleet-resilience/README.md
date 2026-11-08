# Arquitetura de Frota sem Estado Resiliente à Queda Completa de uma AZ

## 1. Cenário de Produção Real
Queda física de uma Availability Zone da AWS na Virgínia não pode impactar nem 1% das transações dos usuários ativos da fintech.

## 2. O Problema Real
Distribuir instâncias e pods uniformemente entre 3 AZs com capacidade de transbordo instantânea caso uma zona desapareça.

## 3. Arquitetura e Engenharia da Solução
Configuração de Auto Scaling Groups com balanceamento de capacidade balance-similar-node-groups e Topology Spread Constraints no K8s.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Multi-AZ High Availability, Topology Spread Constraints, AWS Auto Scaling
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
kubectl get pods -o wide -l app=order-gateway
```
