# Prometheus Duplo em Alta Disponibilidade com Deduplicação no Alertmanager

## 1. Cenário de Produção Real
Reiniciar um servidor Prometheus para manutenção deixava a empresa sem alertas ativos durante a janela de reinício.

## 2. O Problema Real
Garantir redundância ativa-ativa com dois Prometheus coletando os mesmos alvos simultaneamente sem disparar alertas duplicados para o time.

## 3. Arquitetura e Engenharia da Solução
Dois servidores Prometheus idênticos raspando os mesmos exporters e enviando para Alertmanagers operando em cluster Mesh (Gossip).

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Prometheus Dual HA, Alertmanager Mesh (Gossip Protocol), Alert Deduplication
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
amtool cluster show
```
