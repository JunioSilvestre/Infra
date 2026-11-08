# Laboratório de Auditoria e Prevenção de Escalação de Privilégios IAM

## 1. Cenário de Produção Real
Demonstrar como permissões mal configuradas em papéis de AssumeRole podem permitir que um atacante obtenha privilégios de administrador.

## 2. O Problema Real
Auditar e restringir as permissões da conta de serviço de Terraform para o menor privilégio estrito necessário.

## 3. Arquitetura e Engenharia da Solução
Cenário com role excessiva, demonstração da brecha de segurança e aplicação de SCPs e Trust Policies restritivas.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** IAM Privilege Escalation, Principle of Least Privilege, AWS Security Audit
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
aws sts assume-role --role-arn <ROLE_ARN> --role-session-name test-audit
```
