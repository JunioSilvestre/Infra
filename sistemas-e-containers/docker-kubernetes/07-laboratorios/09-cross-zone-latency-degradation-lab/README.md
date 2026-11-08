# Injeção de Latência Inter-Zonas e Otimização com Topology-Aware Routing

## 1. Cenário de Produção Real
Comunicações entre pods em diferentes zonas de disponibilidade na AWS geravam custos altos de transferência de dados e atrasos de 20ms.

## 2. O Problema Real
Priorizar o roteamento de tráfego de rede para pods que residem na mesma zona física (AZ) sempre que houver réplicas saudáveis.

## 3. Arquitetura e Engenharia da Solução
Configuração da flag `service.kubernetes.io/topology-mode: Auto` no Service e medição do ganho de latência via scripts de benchmark.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Topology-Aware Routing, Cross-AZ Latency, FinOps Bandwidth, k6 Load Testing
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
k6 run latency-benchmark.js && kubectl describe service payment-service
```
