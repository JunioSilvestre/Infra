# Gerenciamento de Estado Remoto via Backend HTTP Nativo do GitLab CI/CD

## 1. Cenário de Produção Real
Empresas que utilizam GitLab Enterprise preferem manter os estados hospedados diretamente no próprio GitLab sem provisionar S3/DynamoDB.

## 2. O Problema Real
Proteger e versionar o estado integrado com o sistema de permissões de membros de projeto e branch protection do GitLab.

## 3. Arquitetura e Engenharia da Solução
Configuração do backend `http` apontando para a API do GitLab com autenticação via `CI_JOB_TOKEN` e criptografia integrada.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** GitLab Managed Terraform State, HTTP Backend, CI/CD Integrated Security
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform init -backend-config=address=https://gitlab.corp.com/api/v4/projects/10/terraform/state/prod
```
