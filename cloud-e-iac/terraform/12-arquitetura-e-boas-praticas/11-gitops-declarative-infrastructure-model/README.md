# Modelo Declarativo de GitOps com Sincronização Contínua de Infraestrutura

## 1. Cenário de Produção Real
A divergência entre o que estava commitado no repositório e o que estava rodando na nuvem causava incidentes durante desastres.

## 2. O Problema Real
Tornar o repositório Git a única fonte de verdade da infraestrutura, onde qualquer alteração física seja reconciliada automaticamente.

## 3. Arquitetura e Engenharia da Solução
Implementação do modelo GitOps para infraestrutura combinando pipelines de execução contínua com bloqueio de edições manuais em console.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** GitOps Principles, Infrastructure as Code, Declarative Configuration, Zero Console Access
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
git log -n 5 --oneline infra/prod/
```
