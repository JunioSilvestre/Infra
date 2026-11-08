# Motor de Conformidade Contínua com Auto-Remediação via AWS Config Rules

## 1. Cenário de Produção Real
Mesmo com guardrails preventivos, modificações acidentais na nuvem deixavam recursos fora das normas de compliance.

## 2. O Problema Real
Detectar violações em tempo real e executar correções automáticas (ex: fechar portas abertas, ativar criptografia) em segundos.

## 3. Arquitetura e Engenharia da Solução
Provisionamento de regras customizadas no AWS Config com remediations associadas a documentos do AWS Systems Manager Automation.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** AWS Config, Continuous Compliance, Automated Remediation, Systems Manager
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
aws configservice describe-compliance-by-config-rule
```
