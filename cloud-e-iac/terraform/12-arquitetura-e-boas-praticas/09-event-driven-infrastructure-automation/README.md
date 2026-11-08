# Automação de Infraestrutura Orientada a Eventos com EventBridge e Lambda

## 1. Cenário de Produção Real
Rotinas operacionais (como backups de snapshots, ajuste de cotas e alertas de custo) eram executadas por cron jobs frágeis.

## 2. O Problema Real
Reagir em tempo real a eventos de infraestrutura gerados pelas APIs da nuvem de forma desacoplada e sem servidores dedicados.

## 3. Arquitetura e Engenharia da Solução
Provisionamento de barramentos EventBridge capturando eventos de alteração de estado na nuvem e disparando remediações automáticas via Lambda.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Event-Driven Infrastructure, Amazon EventBridge, AWS Lambda, Serverless Ops
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
aws events list-rules --event-bus-name default
```
