# Esteira de Testes Unitários de Regras de Alerta com Promtool no CI/CD

## 1. Cenário de Produção Real
Alertas críticos continham erros de sintaxe PromQL ou falhavam em disparar na condição esperada, sendo descobertos apenas durante apagões.

## 2. O Problema Real
Garantir no pipeline que todas as regras de alerta e gravação passem por testes de regressão antes do deploy no cluster de monitoramento.

## 3. Arquitetura e Engenharia da Solução
Criação de suítes de teste em YAML (`test_rules.yaml`) simulando séries temporais e validando asserções com `promtool test rules`.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** promtool, Unit Testing Alert Rules, Prometheus CI/CD Gates
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
promtool test rules tests/test_alerts.yaml
```
