# Gestão Declarativa de Alvos no Kubernetes com ServiceMonitor e PodMonitor CRDs

## 1. Cenário de Produção Real
Adicionar novos microsserviços ao monitoramento exigia editar manualmente arquivos de configuração centralizados do Prometheus.

## 2. O Problema Real
Permitir que desenvolvedores definam o monitoramento de seus serviços de forma nativa e desacoplada em seus próprios repositórios.

## 3. Arquitetura e Engenharia da Solução
Deploy do Prometheus Operator e adoção de manifests declarativos `ServiceMonitor` e `PodMonitor` com seleção automática por labels.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Prometheus Operator, ServiceMonitor CRD, Declarative Monitoring, Kubernetes
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
kubectl get servicemonitors -A
```
