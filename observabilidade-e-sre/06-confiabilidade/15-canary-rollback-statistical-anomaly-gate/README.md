# Quality Gate Estatístico com Teste de Hipóteses para Rollback Automático

## 1. Cenário de Produção Real
Pequenas variações na taxa de erro causadas por flutuação normal de rede disparavam rollbacks indevidos em deploys saudáveis.

## 2. O Problema Real
Utilizar testes estatísticos de hipóteses (como Mann-Whitney U) comparando a versão canário contra a linha de base para decisões precisas.

## 3. Arquitetura e Engenharia da Solução
Script de validação estatística consumindo dados do Prometheus e aprovando a promoção apenas com 95% de confiança estatística.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Statistical Quality Gate, Mann-Whitney U Test, Automated Canary Analysis
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
python statistical_canary_evaluator.py --baseline-metrics base.json --canary-metrics canary.json
```
