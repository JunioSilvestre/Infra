# Descarte Controlado de Carga (Load Shedding) para Proteção Contra Colapso

## 1. Cenário de Produção Real
Sob carga extrema de 300% acima da capacidade, o servidor entra em colapso total e deixa de responder a 100% dos usuários.

## 2. O Problema Real
Descartar requisições de baixa prioridade (como relatórios e bots) preservando o processamento das transações financeiras críticas.

## 3. Arquitetura e Engenharia da Solução
Configuração de prioridades de requisição em balanceadores e gateways rejeitando tráfego não prioritário com código HTTP 429.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Load Shedding, Graceful Degradation, Priority Ingress Routing, System Survival
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
curl -I -H 'X-Request-Priority: low' https://api.corp.internal/report
```
