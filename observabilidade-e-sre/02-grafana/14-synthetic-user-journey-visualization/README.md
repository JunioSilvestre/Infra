# Visualização de Jornada Sintética de Usuário e Degradação de Etapas de Compra

## 1. Cenário de Produção Real
Saber exatamente em qual etapa do fluxo de compra (Login -> Carrinho -> Pagamento) os clientes estão enfrentando erros ou desistências.

## 2. O Problema Real
Mapear a taxa de sucesso e o tempo de resposta de cada passo da jornada simulada por robôs sintéticos.

## 3. Arquitetura e Engenharia da Solução
Painel utilizando Grafana Canvas e Sankey Diagram conectando métricas do K6/Playwright simulando fluxos a cada 1 minuto.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** User Journey Mapping, Synthetic Testing, Sankey Diagram, E-commerce SRE
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
curl -s http://grafana.corp/api/dashboards/uid/user-journey
```
