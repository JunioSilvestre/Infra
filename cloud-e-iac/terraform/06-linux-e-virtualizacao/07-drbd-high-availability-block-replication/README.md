# Replicação de Bloco em Tempo Real e Armazenamento Compartilhado com DRBD e Pacemaker

## 1. Cenário de Produção Real
Sistemas legados de telecomunicações em Connecticut não suportam replicação em nível de aplicação e exigem espelhamento de disco síncrono.

## 2. O Problema Real
Garantir replicação de dados bloco a bloco entre dois servidores físicos com failover automático em caso de falha de hardware.

## 3. Arquitetura e Engenharia da Solução
Configuração do DRBD (Distributed Replicated Block Device) gerenciado por cluster de alta disponibilidade Pacemaker/Corosync com fencing STONITH.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** DRBD 9, Pacemaker, Corosync, STONITH Fencing, High Availability Linux
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
drbdadm status all && crm_mon -1
```
