# Gerador Automatizado de Relatórios Pós-Mortem sem Culpa (Blameless) via ChatOps

## 1. Cenário de Produção Real
Equipes de engenharia demoravam dias para redigir pós-mortems após incidentes graves, esquecendo detalhes cronológicos importantes.

## 2. O Problema Real
Capturar a linha do tempo exata de mensagens, deploys e alarmes ocorridos durante o incidente no canal do Slack e gerar rascunho de pós-mortem.

## 3. Arquitetura e Engenharia da Solução
Bot integrado ao Slack disparado por comando `/incident close` que compila eventos, gráficos e ações em um template estruturado no Notion/GitHub.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** SRE Blameless Post-Mortem, Slack API, Incident Timeline, Automation
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
/incident close --incident-id INC-402 --summary 'Outage no gateway de pagamento'
```
