# Laboratório de Injeção de Latência de Rede e Diagnóstico com Jaeger Tracing

## 1. Cenário de Produção Real
Engenheiros precisam aprender a identificar visualmente onde está o gargalo em uma cadeia de microsserviços quando a rede sofre lentidão.

## 2. O Problema Real
Injetar 400ms de latência artificial em um serviço intermediário e capacitar os alunos a localizarem o problema através dos spans do Jaeger.

## 3. Arquitetura e Engenharia da Solução
Cenário com Chaos Mesh aplicando NetworkChaos (delay de rede), geração de tráfego sintético e análise de Flamegraphs no Jaeger.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Chaos Mesh, NetworkChaos, Jaeger Tracing, SRE Troubleshooting Drills
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
kubectl apply -f chaos-scenarios/network-delay-400ms.yaml
```
