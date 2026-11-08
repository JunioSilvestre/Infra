# Arquitetura de Umbrella Chart Corporativo para Stack Bancária em NY

## 1. Cenário de Produção Real
Fintech em NYC opera microsserviços interconectados onde deploys isolados causavam incompatibilidades de versões entre APIs.

## 2. O Problema Real
Padronizar o provisionamento de toda a stack através de um único Umbrella Chart que orquestra dependências, banco e ingress unificado.

## 3. Arquitetura e Engenharia da Solução
Desenvolvimento de Chart com subcharts dependentes no `Chart.yaml`, sobrescrita unificada no `values.yaml` e validação semântica.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Helm v3, Helm Dependencies, Chart.yaml v2, Microservices Architecture
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
helm dependency update . && helm lint . && helm install core-banking . -f values.prod.yaml
```
