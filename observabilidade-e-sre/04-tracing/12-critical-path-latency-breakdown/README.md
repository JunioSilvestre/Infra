# Análise Automática do Caminho Crítico de Latência em Grafos de Microsserviços

## 1. Cenário de Produção Real
Identificar qual dependência em um grafo com 20 nós em cadeia foi o gargalo principal que determinou a lentidão total da transação.

## 2. O Problema Real
Automatizar o cálculo matemático do caminho crítico (Critical Path) em traces distribuídos para orientar prioridades de refatoração.

## 3. Arquitetura e Engenharia da Solução
Algoritmo em Python consumindo dados de spans da API do Jaeger e gerando relatórios de contenção de latência acumulada.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Critical Path Analysis, Distributed Graph Traversal, Performance Engineering
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
python analyze_critical_path.py --trace-id <TRACE_ID>
```
