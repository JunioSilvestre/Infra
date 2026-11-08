# Testes e Validação de Circuit Breakers e Degradação Graciosa de Aplicações

## 1. Cenário de Produção Real
A falha em um serviço secundário de recomendação de produtos derrubava todo o fluxo principal de compra da loja virtual.

## 2. O Problema Real
Garantir que o sistema desligue graciosamente funcionalidades não essenciais (Graceful Degradation) para preservar o núcleo do negócio.

## 3. Arquitetura e Engenharia da Solução
Injeção de falhas controladas com Istio/Envoy testando a abertura automática de disjuntores de software (Circuit Breaking) sob erros.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Circuit Breaker Pattern, Envoy Fault Injection, Graceful Degradation, SRE Architecture
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
kubectl apply -f circuit-breaker-destination-rule.yaml
```
