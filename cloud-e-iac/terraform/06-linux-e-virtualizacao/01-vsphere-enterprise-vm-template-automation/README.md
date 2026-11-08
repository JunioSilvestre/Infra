# Provisionamento Automatizado de Máquinas Virtuais no VMware vSphere com Terraform

## 1. Cenário de Produção Real
Datacenter on-premise em Massachusetts precisava entregar dezenas de servidores Linux padronizados para o time de banco de dados em minutos.

## 2. O Problema Real
Eliminar o provisionamento manual por clique no vCenter que gerava divergências de configuração de rede, discos e segurança.

## 3. Arquitetura e Engenharia da Solução
Módulo Terraform utilizando o provedor `hashicorp/vsphere` clonando templates de SO endurecidos com customização dinâmica de IPs estáticos e DNS.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** VMware vSphere Provider, vCenter Server, Linux Templates, Static IP Customization
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform apply -target=module.vsphere_database_vms
```
