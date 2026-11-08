# Automação e Configuração de Captura de Crash Dumps de Kernel com Kdump

## 1. Cenário de Produção Real
Servidores em produção sofriam com Kernel Panics repentinos que reiniciavam a máquina sem deixar nenhuma pista nos logs normais de sistema.

## 2. O Problema Real
Reservar memória dedicada para capturar o estado completo da memória RAM no momento do travamento para análise forense via `crash`.

## 3. Arquitetura e Engenharia da Solução
Configuração do kernel com `crashkernel=256M`, ativação do serviço `kdump` e direcionamento de dumps compactados para storage NFS centralizado.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Linux Kdump, kexec, Kernel Crash Analysis, GDB Debugging
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
kdumpctl status
```
