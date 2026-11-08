# Infraestrutura Híbrida para Borda de Telecomunicações 5G em Connecticut

## 1. Cenário de Produção Real
Operadora de telecomunicações operando torres celulares e datacenters de borda em Connecticut necessita gerenciar infraestrutura híbrida via código.

## 2. O Problema Real
Controlar servidores bare-metal locais e recursos de nuvem pública sob um único plano de governança declarativo.

## 3. Arquitetura e Engenharia da Solução
Módulos Terraform integrando VMware vSphere on-premise com AWS Direct Connect e clusters Kubernetes ultraleves K3s nas bordas.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Terraform, VMware vSphere Provider, AWS Direct Connect, K3s, Hybrid Cloud
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform apply -target=module.telecom_5g_edge
```
