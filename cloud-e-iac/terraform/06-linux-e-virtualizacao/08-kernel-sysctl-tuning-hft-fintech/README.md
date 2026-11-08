# Otimização Extrema de Parâmetros de Kernel Linux para Trading de Baixa Latência

## 1. Cenário de Produção Real
Servidores de trading algorítmico em Wall Street sofriam com picos de latência causados por interrupções do kernel e paginação de memória.

## 2. O Problema Real
Ajustar parâmetros de rede TCP, paginação de memória virtual e agendamento de CPU do kernel para eliminar variações de latência (jitter).

## 3. Arquitetura e Engenharia da Solução
Provisionamento declarativo de `/etc/sysctl.d/99-hft.conf` configurando `tcp_nodelay`, `vm.dirty_ratio`, HugePages transparentes e isolamento de CPU.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Linux Kernel Tuning, sysctl, HugePages, Low-Latency Networking, High-Frequency Trading
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
sysctl --system && cat /proc/sys/net/ipv4/tcp_rmem
```
