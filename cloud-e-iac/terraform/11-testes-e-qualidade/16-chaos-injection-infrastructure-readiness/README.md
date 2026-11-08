# Testes de Prontidão e Validação com Injeção de Falhas em Testes de Aceitação

## 1. Cenário de Produção Real
Validar se os alarmes e regras de auto-remediação provisionados pelo Terraform realmente disparam quando a infraestrutura sofre degradação.

## 2. O Problema Real
Simular falha física de um recurso recém-provisionado e validar se o sistema se comporta conforme os requisitos de confiabilidade.

## 3. Arquitetura e Engenharia da Solução
Script de validação que derruba instâncias de teste e consulta as métricas do CloudWatch/Datadog para confirmar o acionamento de alertas.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Chaos Engineering, Acceptance Testing, Reliability Verification, SRE
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
pytest test_resilience.py
```
