# Descoberta Dinâmica de Serviços em Ambientes Híbridos com Consul Service Discovery

## 1. Cenário de Produção Real
Servidores virtuais criados e destruídos dinamicamente pelo Auto Scaling Group não eram capturados pelo Prometheus com configs estáticas.

## 2. O Problema Real
Descobrir automaticamente novos nós de banco de dados e aplicações no momento exato em que são registrados no catálogo do Consul.

## 3. Arquitetura e Engenharia da Solução
Configuração do bloco `consul_sd_configs` no Prometheus com relabeling dinâmico para extração de tags e metadados de serviços.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Prometheus Service Discovery, HashiCorp Consul, Dynamic Infrastructure
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
curl -s http://prometheus:9090/api/v1/targets | jq .data.activeTargets
```
