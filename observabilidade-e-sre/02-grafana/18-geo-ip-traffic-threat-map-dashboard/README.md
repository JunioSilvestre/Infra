# Mapa Global de Tráfego e Ataques de Segurança em Tempo Real (Threat Map)

## 1. Cenário de Produção Real
Visualizar geograficamente no mapa múndi a origem das requisições bloqueadas por firewalls e ataques de negação de serviço (DDoS).

## 2. O Problema Real
Identificar picos anômalos de acessos vindos de países onde a empresa não opera comercialmente.

## 3. Arquitetura e Engenharia da Solução
Dashboard no Grafana utilizando o painel Geomap enriquecendo logs de Ingress com a base de dados MaxMind GeoIP2.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Grafana Geomap Panel, MaxMind GeoIP2, Threat Intelligence, Edge Security
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
curl -s http://grafana.corp/api/dashboards/uid/geo-threat-map
```
