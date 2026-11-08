# Modernização de Charts Legados para Suporte a Canary Deploys com Argo Rollouts

## 1. Cenário de Produção Real
Fintech de Hartford exigia que novos releases fossem direcionados inicialmente para 5% dos usuários reais antes do deploy geral.

## 2. O Problema Real
Substituir o recurso nativo `Deployment` pelo CRD `Rollout` dentro do template Helm mantendo parametrização dinâmica de steps.

## 3. Arquitetura e Engenharia da Solução
Criação de templates condicionais no Helm permitindo alternar entre Deployment padrão e Argo Rollout com AnalysisTemplate de métricas.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Helm Templates, Argo Rollouts, Canary Analysis, Prometheus Metrics
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
helm template . -f values.canary.yaml | grep -A 10 'kind: Rollout'
```
