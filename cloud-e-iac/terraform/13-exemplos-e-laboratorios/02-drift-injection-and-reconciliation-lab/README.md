# Laboratório de Injeção de Derivação (Drift) e Reconciliação Controlada

## 1. Cenário de Produção Real
Demonstrar na prática o que acontece quando um operador altera manualmente regras de segurança ou tags no console da nuvem.

## 2. O Problema Real
Capacitar o time a diagnosticar a derivação através do `plan` e decidir entre reconciliar o código Git ou sobrescrever a nuvem.

## 3. Arquitetura e Engenharia da Solução
Script que muta propositalmente um Security Group na AWS, execução de análise de diff detalhada e aplicação de alinhamento.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Drift Reconciliation, Detailed Exit Code, Cloud Triage, Incident Response
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform plan -detailed-exitcode
```
