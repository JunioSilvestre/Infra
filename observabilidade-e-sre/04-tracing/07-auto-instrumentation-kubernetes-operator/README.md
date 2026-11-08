# Instrumentação Automática de Aplicações sem Alteração de Código com OTel Operator

## 1. Cenário de Produção Real
Centenas de squads de desenvolvimento demoravam meses para adicionar dependências de OpenTelemetry em seus códigos-fonte legados.

## 2. O Problema Real
Injetar agentes de instrumentação (Java, Node.js, Python, .NET, Go) automaticamente nos pods em tempo de execução via anotações do Kubernetes.

## 3. Arquitetura e Engenharia da Solução
Deploy do OpenTelemetry Operator e uso do recurso `Instrumentation` com webhook de admissão injetando bibliotecas nas inicializações.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** OpenTelemetry Operator, Auto-Instrumentation, Kubernetes Mutating Webhook
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
kubectl apply -f otel-auto-instrumentation.yaml
```
