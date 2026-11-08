# Teste de Estresse de Capacidade para Eventos Extremos (Black Swan Events)

## 1. Cenário de Produção Real
Garantir que a plataforma sobreviva a eventos imprevistos de tráfego 10 vezes maiores que o pico normal histórico.

## 2. O Problema Real
Descobrir os pontos de quebra da arquitetura (banco, conexões TCP, memória, limites de API de provedores) sob saturação absoluta.

## 3. Arquitetura e Engenharia da Solução
Execução de testes de estresse distribuídos com geradores de carga k6 em clusters temporários com análise de estrangulamento.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Black Swan Stress Testing, Distributed k6, System Bottleneck Analysis
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
k6 run --vus 5000 --duration 30m stress_test_checkout.js
```
