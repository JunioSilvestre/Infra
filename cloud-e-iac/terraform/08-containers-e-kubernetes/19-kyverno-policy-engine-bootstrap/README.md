# Deploy do Motor de Governança Kyverno com Políticas de Segurança Restritas

## 1. Cenário de Produção Real
Garantir que nenhum pod rode como root, todas as imagens venham do registry interno e que todos os recursos tenham tags corporativas.

## 2. O Problema Real
Validar, mutar e gerar recursos Kubernetes na admissão sem necessidade de escrever código complexo em Rego.

## 3. Arquitetura e Engenharia da Solução
Instalação do Kyverno via Helm e aplicação de ClusterPolicies padronizadas de segurança de pods e auditoria de recursos.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Terraform, Kyverno, Kubernetes Admission Controllers, Pod Security Standards
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform apply -target=helm_release.kyverno
```
