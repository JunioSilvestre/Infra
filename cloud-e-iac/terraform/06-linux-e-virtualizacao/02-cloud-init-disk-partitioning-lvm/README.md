# Configuração Dinâmica de Discos e Particionamento LVM via Cloud-Init em Nuvem

## 1. Cenário de Produção Real
Servidores provisionados em nuvem híbrida vinham com partição raiz única, gerando travamento do sistema quando logs enchiam `/var/log`.

## 2. O Problema Real
Garantir que toda nova máquina Linux nasça automaticamente com estrutura de particionamento LVM segregada (`/`, `/var`, `/home`, `/tmp`).

## 3. Arquitetura e Engenharia da Solução
Uso de scripts declarativos de cloud-config gerenciando volume groups LVM, logical volumes com ponto de montagem e opções estritas de montagem (`nodev,nosuid`).

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Cloud-Init, Linux LVM, Particionamento de Disco, Filesystem Hardening
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
cloud-init status --wait && lsblk -f
```
