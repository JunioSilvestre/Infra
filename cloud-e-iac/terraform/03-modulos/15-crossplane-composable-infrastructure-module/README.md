# Construção de Módulos Terraform Compatíveis com Pipelines Crossplane

## 1. Cenário de Produção Real
Empresa migrando para engenharia de plataforma via Kubernetes precisa reutilizar seus módulos Terraform existentes em CRDs declarativos.

## 2. O Problema Real
Permitir que desenvolvedores peçam bancos de dados via `kubectl apply` e que o operador execute o módulo Terraform correspondente.

## 3. Arquitetura e Engenharia da Solução
Configuração do Terraform Provider dentro do Crossplane consumindo módulos Git versionados como Composite Resource Definitions (XRD).

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Crossplane, Terraform Provider for Crossplane, Platform Engineering, Kubernetes
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
kubectl get composites -A
```
