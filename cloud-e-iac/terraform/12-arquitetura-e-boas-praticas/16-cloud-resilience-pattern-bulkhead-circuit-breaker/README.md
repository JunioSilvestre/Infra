# Padrões de Resiliência de Nuvem: Bulkhead e Circuit Breaker em Infraestrutura

## 1. Cenário de Produção Real
A lentidão em um serviço downstream de terceiros esgotava as conexões de rede e derrubava todo o gateway de pagamentos da empresa.

## 2. O Problema Real
Isolar pools de recursos (Bulkhead) e limitar o raio de falhas para que problemas em um componente não derrubem o ecossistema.

## 3. Arquitetura e Engenharia da Solução
Dimensionamento de target groups separados, limites rígidos de conexões TCP em balanceadores e timeouts calibrados no nível de infraestrutura.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Bulkhead Pattern, Circuit Breaker, Fault Isolation, High-Availability Systems
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform plan -target=module.payment_gateway_bulkhead
```
