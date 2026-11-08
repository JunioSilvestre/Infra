# Empacotamento de Configurações de Service Mesh Istio em Helm Charts

## 1. Cenário de Produção Real
Adoção de Istio Service Mesh demandava dezenas de VirtualServices, DestinationRules e PeerAuthentications mantidos separadamente.

## 2. O Problema Real
Unificar a declaração da aplicação e suas políticas de malha de serviço em um único pacote rastreável e versionado.

## 3. Arquitetura e Engenharia da Solução
Implementação de templates para Istio no chart da aplicação, controlando circuit breaking, timeouts e TLS mútuo estrito via values.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Helm v3, Istio Service Mesh, VirtualService, DestinationRule, mTLS
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
helm template core-api ./chart --set istio.enabled=true | grep -A 5 'kind: DestinationRule'
```
