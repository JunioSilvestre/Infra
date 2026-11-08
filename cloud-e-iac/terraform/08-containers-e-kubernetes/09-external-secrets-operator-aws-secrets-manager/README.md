# Sincronização de Segredos do AWS Secrets Manager com External Secrets Operator

## 1. Cenário de Produção Real
Desenvolvedores não tinham autorização para acessar a AWS diretamente e precisavam consumir senhas de banco nativamente no Kubernetes.

## 2. O Problema Real
Sincronizar segredos da nuvem automaticamente com Kubernetes Secrets sem intervenção humana e com rotação contínua.

## 3. Arquitetura e Engenharia da Solução
Deploy do External Secrets Operator (ESO) via Helm, criação de ClusterSecretStore autenticado via IRSA e validação de sincronismo.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Terraform, External Secrets Operator (ESO), AWS Secrets Manager, IRSA
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform apply -target=helm_release.external_secrets
```
