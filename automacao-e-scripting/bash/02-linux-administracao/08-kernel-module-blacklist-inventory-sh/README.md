# 08 — Inventário e Blacklist Automatizada de Módulos Inseguros do Kernel

## 🏢 Cenário de Negócios e Produção Real
Conformidade com CIS Benchmarks exigindo desativação de módulos de rede e storage não autorizados (firewire, thunderbolt, cramfs, dccp).

### ⚠️ O Problema Real
Módulos vulneráveis podem ser carregados dinamicamente via modprobe por exploits locais.

## 🚀 Arquitetura e Engenharia em Bash
Inspeção com lsmod, comparação contra baseline corporativa, geração de arquivos de configuração em /etc/modprobe.d/blacklist-corp.conf com diretiva 'install <modulo> /bin/true'.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`lsmod, modprobe, modinfo, find`

## 📌 Exemplo de Execução CLI
```bash
./kernel_mod_audit.sh --audit-only --config /etc/security/blocked_modules.txt
```
