# Avaliador Automatizado de Maturidade de Observabilidade de Microsserviços

## 1. Cenário de Produção Real
Saber com precisão quais dos 200 serviços da empresa possuem métricas, logs estruturados, tracing e SLOs configurados adequadamente.

## 2. O Problema Real
Gerar um score de maturidade de SRE (Nível 1 a 5) para cada squad com plano de ação claro para atingir a conformidade.

## 3. Arquitetura e Engenharia da Solução
Ferramenta de varredura que audita repositórios Git checando presença de anotações de métricas, manifests de SLO e testes de caos.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** SRE Maturity Model, Observability Scorecard, Engineering Standards
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
python evaluate_sre_maturity.py --org my-fintech-corp
```
