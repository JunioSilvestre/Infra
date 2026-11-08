# Autenticação de Pipelines sem Chaves Estáticas via Federação OIDC e AWS STS

## 1. Cenário de Produção Real
Vazamentos de chaves estáticas da AWS (`AWS_ACCESS_KEY_ID`) armazenadas em repositórios representavam um risco crítico de segurança.

## 2. O Problema Real
Eliminar credenciais de longa duração permitindo que os runners do GitHub Actions assumam papéis temporários na AWS via tokens OIDC.

## 3. Arquitetura e Engenharia da Solução
Configuração de Identity Provider OIDC na AWS, roles com trust policy vinculadas ao repositório específico e ação `aws-actions/configure-aws-credentials`.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** OpenID Connect (OIDC), AWS STS, AssumeRoleWithWebIdentity, Zero Secrets CI/CD
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
aws sts get-caller-identity
```
