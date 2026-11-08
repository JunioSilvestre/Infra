# Barramento de Eventos Corporativo com Amazon EventBridge e Schema Registry

## 1. Cenário de Produção Real
Microsserviços em diferentes contas AWS comunicavam-se via acoplamento HTTP síncrono frágil, gerando cascatas de falha.

## 2. O Problema Real
Construir uma malha de eventos assíncrona, desacoplada e escalável com validação de schemas em tempo real.

## 3. Arquitetura e Engenharia da Solução
Criação de Custom EventBuses, regras de roteamento baseadas em padrões JSON e integração com EventBridge Schema Registry para governança.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Amazon EventBridge, Event-Driven Architecture, Schema Discovery, AWS Lambda
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
aws events list-rules --event-bus-name core-events-bus
```
