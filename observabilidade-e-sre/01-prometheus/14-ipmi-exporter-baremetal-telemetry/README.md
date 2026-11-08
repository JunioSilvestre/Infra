# Telemetria de Sensores de Hardware e Temperatura com IPMI Exporter

## 1. Cenário de Produção Real
Servidores bare-metal de alta performance em Boston operavam no limite térmico, gerando estrangulamento (thermal throttling) silencioso.

## 2. O Problema Real
Monitorar rotação de ventoinhas, consumo de energia em Watts de fontes redundantes e temperatura de sockets de CPU via IPMI.

## 3. Arquitetura e Engenharia da Solução
Deploy do `ipmi_exporter` com privilégios de acesso aos módulos de kernel `ipmi_devintf` e exportação contínua de métricas de chassi.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** IPMI Exporter, Hardware Sensor Telemetry, Thermal Monitoring, Bare-Metal SRE
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
curl -s http://localhost:9290/metrics | grep ipmi_temperature_celsius
```
