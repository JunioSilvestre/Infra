# Coletor Automatizado de Evidências de Conformidade de Infraestrutura para Auditores

## 1. Cenário de Produção Real
Engenheiros de SRE gastavam semanas antes das auditorias SOC 2 tirando prints manuais de configurações de nuvem e permissões.

## 2. O Problema Real
Extrair relatórios de conformidade e evidências de configuração diretamente do estado do Terraform em formato PDF/Markdown.

## 3. Arquitetura e Engenharia da Solução
Script de automação consumindo o JSON do estado e gerando relatórios de auditoria com hashes SHA-256 e evidências de criptografia ativa.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Audit Automation, SOC 2 Evidence Collection, Terraform State Parser, Compliance
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
python generate_audit_evidence.py --state-file prod.tfstate
```
