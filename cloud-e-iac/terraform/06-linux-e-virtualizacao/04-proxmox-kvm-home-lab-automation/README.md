# Automação de Infraestrutura de Virtualização KVM com Proxmox VE e Terraform

## 1. Cenário de Produção Real
Equipes de engenharia operando laboratórios de testes locais e servidores de borda precisavam gerenciar clusters Proxmox via código.

## 2. O Problema Real
Provisionar instâncias virtuais com baixa sobrecarga, interfaces de rede em bridge dedicadas e storage ZFS local com snapshots.

## 3. Arquitetura e Engenharia da Solução
Módulo Terraform utilizando o provedor `telmate/proxmox` provisionando VMs baseadas em templates cloud-init sobre KVM.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Proxmox VE, KVM Hypervisor, ZFS Storage, Cloud-Init, Telmate Provider
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform apply -target=proxmox_vm_qemu.k8s_node
```
