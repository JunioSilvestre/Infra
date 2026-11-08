# 19 — Micro-Container Runtime from Scratch (Bash & cgroups v2)

Implementação didática e funcional de um runtime de containers completo em Bash puro, demonstrando os princípios fundamentais do kernel Linux que dão vida ao Docker e Kubernetes: **Namespaces**, **cgroups v2**, **OverlayFS** e **chroot/pivot_root**.

## 🏢 Cenário de Aprendizado & Engenharia Extrema em Linux
Para atingir domínio sênior de engenharia de infraestrutura Linux, é indispensável compreender exatamente o que acontece quando um contêiner é executado, sem a abstração de ferramentas como Docker ou Podman. Este projeto implementa um runtime mínimo que isola processos com total segurança diretamente via syscalls e comandos nativos da shell.

## 🚀 Arquitetura e Engenharia em Bash
- **Isolamento de Namespaces com `unshare`:**
  - `PID`: Processos dentro do container não enxergam a árvore de processos do host (o processo principal se torna PID 1).
  - `NET`: Criação de interfaces de rede virtuais (`veth pairs`) conectadas a uma bridge no host.
  - `MNT`: Montagem de sistema de arquivos isolado sem acesso ao disco real do host.
  - `UTS`: Hostname próprio para o container.
  - `IPC`: Isolamento de memória compartilhada e semáforos.
- **Controle de Recursos com `cgroups v2` (`/sys/fs/cgroup/`):**
  - Limite rígido de memória RAM (`memory.max` e `memory.high`).
  - Limite de cota de CPU (`cpu.max`).
  - Limite de quantidade máxima de processos para prevenir ataques de Fork Bomb (`pids.max`).
- **Sistema de Arquivos em Camadas com OverlayFS:** Montagem de camadas read-only (imagem base Alpine/Ubuntu) e uma camada de escrita temporária (upperdir/workdir).
- **Substituição de Raiz com `pivot_root`:** Troca segura da raiz do sistema de arquivos para o novo mountpoint.

## 🛠️ Ferramentas Nativas Utilizadas
- `unshare` (chamada das flags de namespace do kernel `CLONE_NEWPID`, `CLONE_NEWNET`, etc.)
- `mount` (montagem de `overlay`, `/proc`, `/sys` e `/dev`)
- `ip` (`ip link add veth`, criação de bridge e regras de NAT no `iptables`/`nftables`)
- `/sys/fs/cgroup/` (manipulação direta de arquivos do subsistema de cgroups v2)

## 📌 Exemplo de Execução
```bash
sudo ./bash_container.sh run --rootfs /images/alpine --mem 256M --cpus 1.5 -- /bin/sh
```

