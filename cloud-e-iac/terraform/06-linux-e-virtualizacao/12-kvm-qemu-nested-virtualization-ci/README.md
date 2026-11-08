# Provisionamento de Ambientes de CI com Suporte a Virtualização Aninhada (Nested KVM)

## 1. Cenário de Produção Real
Runners de integração contínua precisavam inicializar emuladores de Android e máquinas virtuais de teste dentro de instâncias de nuvem.

## 2. O Problema Real
Habilitar extensões de virtualização de hardware (Intel VT-x / AMD-V) dentro de máquinas virtuais para execução de hipervisores aninhados.

## 3. Arquitetura e Engenharia da Solução
Ativação do módulo de kernel `kvm_intel nested=1`, alocação de vCPUs dedicadas e validação da capacidade de inicialização de VMs aninhadas.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Nested Virtualization, KVM, QEMU, libvirt, CI/CD Test Runners
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
cat /sys/module/kvm_intel/parameters/nested
```
