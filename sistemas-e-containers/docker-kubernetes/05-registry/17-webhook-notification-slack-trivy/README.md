# Notificação em Tempo Real de Vulnerabilidades Críticas de Imagens via Slack

## 1. Cenário de Produção Real
Equipes de segurança descobriam vulnerabilidades em imagens apenas semanas depois quando o relatório mensal era gerado.

## 2. O Problema Real
Alertar o time de engenharia imediatamente no canal do Slack no momento exato em que o scanner detectar uma CVE Zero-Day.

## 3. Arquitetura e Engenharia da Solução
Configuração de Webhooks do Harbor direcionados a uma Cloud Function/Lambda que formata o JSON do relatório e posta mensagem estruturada.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Harbor Webhooks, Slack Webhooks, Python/Node Serverless, DevSecOps Alerting
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
curl -X POST -H 'Content-Type: application/json' -d @test-event.json https://alert-hub.internal/harbor
```
