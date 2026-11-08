# Framework de Medição e Cálculo Matemático de SLIs Confiáveis no Prometheus

## 1. Cenário de Produção Real
Muitos times usavam métricas superficiais de CPU para medir a saúde do sistema em vez de medir a satisfação real dos usuários.

## 2. O Problema Real
Definir e computar Indicadores de Nível de Serviço (SLIs) matematicamente sólidos baseados na proporção de requisições boas vs totais.

## 3. Arquitetura e Engenharia da Solução
Construção de suíte de regras de PromQL padronizadas calculando disponibilidade e latência segundo o Google SRE Handbook.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Service Level Indicators (SLI), Google SRE Handbook, PromQL Math, Availability Ratio
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
promtool check rules sli_definitions.yaml
```
