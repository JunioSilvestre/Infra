# Bootstrap Automatizado de Controladores Kubernetes com Provedor Helm

## 1. Cenário de Produção Real
Após a criação do cluster, operadores precisavam instalar manualmente Cert-Manager, Ingress-Nginx e ExternalDNS gerando inconsistências.

## 2. O Problema Real
Garantir que todo cluster recém-criado nasça imediatamente operacional com todos os controladores e CRDs de infraestrutura instalados.

## 3. Arquitetura e Engenharia da Solução
Uso do `provider "helm"` autenticado via outputs do módulo EKS, aplicando charts oficiais com valores estruturados em YAML.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Terraform Helm Provider, Cert-Manager, Ingress-Nginx, ExternalDNS
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform apply -target=helm_release.ingress_nginx
```
