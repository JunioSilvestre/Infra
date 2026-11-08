# Interrupção Automática de Deploys com Base em Degradação de SLIs

## 1. Cenário de Produção Real
Deploys de novas versões com bugs passavam despercebidos até que a taxa de erro atingisse 10% de todos os usuários.

## 2. O Problema Real
Interromper o rollout e disparar rollback automático se a versão canário apresentar qualquer queda estatisticamente relevante no SLI.

## 3. Arquitetura e Engenharia da Solução
Integração do Argo Rollouts com Prometheus executando testes de hipóteses estatísticas em janelas de 5 minutos durante o release.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Automated Canary Analysis, Mann-Whitney U Test, SRE Release Safety
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
kubectl argo rollouts status rollout core-banking
```
