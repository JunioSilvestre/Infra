# Monitoramento de Roteadores e Switches Físicos com Prometheus SNMP Exporter

## 1. Cenário de Produção Real
Equipe de redes precisava monitorar interfaces de fibra 100GbE, erros de CRC e temperatura de switches Cisco e Arista no datacenter.

## 2. O Problema Real
Coletar métricas de hardware de rede via protocolo SNMP v3 com criptografia e integrá-las aos dashboards de SRE da corporação.

## 3. Arquitetura e Engenharia da Solução
Geração de `snmp.yml` compilado com gerador oficial de MIBs e execução do container SNMP Exporter conectado ao Prometheus.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** SNMP Exporter, Cisco/Arista Networking, SNMPv3, MIB Compilation
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
snmp_exporter --config.file=snmp.yml
```
