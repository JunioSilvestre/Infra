# Triagem e Agrupamento Autônomo de Assinaturas de Erro em Logs com NLP

## 1. Cenário de Produção Real
Durante incidentes, centenas de milhares de linhas de log inundavam os dashboards, dificultando a localização da mensagem de erro causadora.

## 2. O Problema Real
Agrupar logs semelhantes usando algoritmos de clustering de texto e extrair a assinatura única do erro com maior frequência.

## 3. Arquitetura e Engenharia da Solução
Script de análise processando streams de log com biblioteca de processamento de texto e gerando relatórios de causas mais prováveis.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Log Clustering, Error Signature Extraction, Automated Triage, Machine Learning
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
python triage_log_errors.py --input-stream logs.json
```
