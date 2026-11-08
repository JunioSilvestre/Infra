# Ambiente Espelho para Auditoria e Certificação SOC 2 / PCI-DSS

## 1. Cenário de Produção Real
Auditores externos precisavam inspecionar configurações de rede, logs de acesso e políticas sem interferir na operação diária de produção.

## 2. O Problema Real
Prover um ambiente congelado, idêntico ao de produção, com acesso de leitura irrestrito para as firmas de auditoria externa.

## 3. Arquitetura e Engenharia da Solução
Deploy de ambiente snapshot contendo cópias fiéis de firewalls, topologia de rede e relatórios de conformidade gerados via código.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** SOC 2 Type II, PCI-DSS Auditing, Read-Only Compliance Environment
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform plan -var-file=audit-verification.tfvars
```
