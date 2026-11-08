# Detecção Inteligente de Anomalias em Fluxos de Log com Machine Learning

## 1. Cenário de Produção Real
Identificar novos padrões de erro ou aumento anômalo de falhas HTTP 500 sem depender de palavras-chave estáticas pré-configuradas.

## 2. O Problema Real
Algoritmos de aprendizado de máquina analisando séries temporais de logs e disparando alarmes quando o comportamento foge do padrão histórico.

## 3. Arquitetura e Engenharia da Solução
Ativação do detector de anomalias (Random Cut Forest) nativo do OpenSearch monitorando contagens de mensagens de erro agregadas.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** OpenSearch Anomaly Detection, Random Cut Forest (RCF), Machine Learning Observability
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
curl -X GET 'https://opensearch.corp.internal/_plugins/_anomaly_detection/detectors'
```
