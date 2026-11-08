# Detecção Inteligente de Ameaças com GuardDuty, Security Hub e Auto-Remediação

## 1. Cenário de Produção Real
Instâncias EC2 infectadas com mineradores de cripto ou credenciais IAM vazadas no GitHub demoravam horas para serem contidas.

## 2. O Problema Real
Detectar anomalias comportamentais via machine learning e disparar contenção automática (isolamento de Security Group e revogação de chaves).

## 3. Arquitetura e Engenharia da Solução
Habilitação do Amazon GuardDuty e Security Hub com regras EventBridge disparando Lambdas de auto-remediação de segurança.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Amazon GuardDuty, AWS Security Hub, Automated Remediation, CloudTrail
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
aws guardduty list-detectors
```
