# Rotação Automática e Periódica de Senhas de Banco com AWS Secrets Manager

## 1. Cenário de Produção Real
Credenciais administrativas do PostgreSQL permaneciam inalteradas por anos devido ao receio de derrubar a aplicação durante a troca.

## 2. O Problema Real
Trocar senhas de banco a cada 30 dias automaticamente sem nenhuma intervenção humana e com zero indisponibilidade das conexões ativas.

## 3. Arquitetura e Engenharia da Solução
AWS Secrets Manager integrado com função Lambda oficial de rotação executando estratégia de usuário duplo (master/shadow).

## 4. Ferramentas e Tecnologias
- **Ecossistema:** AWS Secrets Manager, Automated Password Rotation, AWS Lambda, RDS Security
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
aws secretsmanager describe-secret --secret-id prod/db/postgresql
```
