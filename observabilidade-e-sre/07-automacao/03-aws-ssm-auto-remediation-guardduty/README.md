# Auto-Remediação de Incidentes de Segurança com AWS GuardDuty e SSM

## 1. Cenário de Produção Real
Quando o GuardDuty detectava comunicação com IP malicioso de comando e controle (C2), a máquina precisava ser isolada em segundos.

## 2. O Problema Real
Eliminar o tempo de resposta manual isolando a instância infectada da rede e coletando evidências forenses automaticamente.

## 3. Arquitetura e Engenharia da Solução
Regra do EventBridge capturando achados de severidade High do GuardDuty disparando documento de automação do Systems Manager.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** AWS Systems Manager Automation, Amazon GuardDuty, EventBridge, Forensics
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
aws ssm start-automation-execution --document-name 'IsolateCompromisedEC2'
```
