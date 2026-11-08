# Motor de Retentativas Resiliente com Backoff Exponencial e Jitter Aleatório

## 1. Cenário de Produção Real
Quando um serviço voltava ao ar após uma falha, milhares de clientes faziam retentativas exatamente no mesmo segundo, derrubando-o novamente (Thundering Herd).

## 2. O Problema Real
Espalhar as retentativas no tempo adicionando um componente aleatório (Full Jitter) para evitar sincronização de tráfego de retry.

## 3. Arquitetura e Engenharia da Solução
Biblioteca de cliente HTTP corporativa implementando o algoritmo oficial de Full Jitter recomendado pela AWS para chamadas de rede.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Thundering Herd Problem, Exponential Backoff with Jitter, Network Resilience
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
python client_with_jitter.py --target https://api.corp.internal/data
```
