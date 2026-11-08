# Automação de Runners de CI Efêmeros no Kubernetes com Actions Runner Controller

## 1. Cenário de Produção Real
Pipelines de infraestrutura ficavam em longas filas de espera devido à falta de runners de CI disponíveis na empresa.

## 2. O Problema Real
Escalar runners de GitHub Actions dinamicamente em pods do Kubernetes sob demanda, destruindo-os após cada execução.

## 3. Arquitetura e Engenharia da Solução
Deploy do Actions Runner Controller (ARC) no cluster com RunnerDeployments configurados para autoescalonar conforme a fila de jobs.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Actions Runner Controller (ARC), Kubernetes, GitHub Actions, Scalable CI/CD
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
kubectl get runners -A
```
