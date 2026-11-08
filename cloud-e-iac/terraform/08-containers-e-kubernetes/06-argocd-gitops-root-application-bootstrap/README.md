# Implantação do ArgoCD e Padrão App-of-Apps via Terraform

## 1. Cenário de Produção Real
Equipes de desenvolvimento precisavam adotar GitOps imediatamente após o provisionamento do cluster pelo time de infraestrutura.

## 2. O Problema Real
Conectar o Terraform ao fluxo de GitOps instalando o ArgoCD e aplicando a aplicação raiz que assume o controle de todos os deploys.

## 3. Arquitetura e Engenharia da Solução
Instalação do ArgoCD via Helm release no Terraform associado a um manifesto `kubectl_manifest` aplicando a Application raiz do repositório.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Terraform, ArgoCD, App-of-Apps Pattern, GitOps, Kubernetes
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform apply -target=helm_release.argocd
```
