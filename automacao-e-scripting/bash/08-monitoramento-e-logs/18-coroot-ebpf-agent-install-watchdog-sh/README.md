# 18 — Watchdog e Verificador de Telemetria eBPF no Kernel Linux

## 🏢 Cenário de Negócios e Produção Real
Uso de ferramentas modernas de observabilidade baseadas em eBPF para rastreamento de rede e profiling de código.

### ⚠️ O Problema Real
Programas eBPF falham ao compilar contra headers de kernel atualizados ou são rejeitados pelo verificador do kernel.

## 🚀 Arquitetura e Engenharia em Bash
Inspeção de programas eBPF carregados via 'bpftool prog list', verificação de erros no dmesg relacionados ao BPF verifier e validação de montagem do sistema de arquivos bpf (/sys/fs/bpf).

## 🛠️ Ferramentas Nativas Linux Utilizadas
`bpftool, dmesg, grep, mount`

## 📌 Exemplo de Execução CLI
```bash
./ebpf_watchdog.sh --verify-fs --check-programs
```
