# Laboratório de Supressão e Desduplicação de Tempestades de Alertas (Alert Storm)

## 1. Cenário de Produção Real
Treinar engenheiros para lidar com cenários onde 2.000 alertas disparam nos primeiros 60 segundos de uma queda de datacenter.

## 2. O Problema Real
Configurar regras de inibição (inhibition rules) no Alertmanager para silenciar alarmes secundários mantendo apenas o alarme raiz visível.

## 3. Arquitetura e Engenharia da Solução
Disparo simulado de múltiplos alertas simultâneos, ajuste de `inhibit_rules` em tempo real e validação da redução de ruído nos canais.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Alertmanager Inhibit Rules, Alert Storm Suppression, Noise Reduction Training
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
amtool alert --active
```
