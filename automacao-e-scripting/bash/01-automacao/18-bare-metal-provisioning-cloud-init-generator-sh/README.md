# 18 — Bare-Metal Provisioning & Dynamic cloud-init Generator (Bash)

Automação em Bash para inicialização autônoma de servidores bare-metal e máquinas virtuais via PXE/iPXE com geração dinâmica de manifestos `cloud-init`, particionamento de disco e configuração de rede `netplan`.

## 🏢 Cenário de Negócios (Data Centers Privados & Edge Computing)
Empresas que operam seus próprios data centers em New Jersey ou Massachusetts para escapar dos custos proibitivos da nuvem pública necessitam provisionar dezenas de servidores físicos em minutos, desde o boot via rede até a configuração do sistema operacional, sem intervenção manual.

## 🚀 Arquitetura e Engenharia em Bash
- **Identificação de Hardware no Boot:** Detecção automática de interfaces de rede físicas (`ip link`), discos NVMe/SSD disponíveis (`lsblk -J`) e total de memória RAM.
- **Geração Dinâmica de `user-data` e `meta-data`:** Criação de manifestos YAML para o `cloud-init` com injeção de chaves SSH públicas, usuários administrativos, pools NTP e certificados CA.
- **Particionamento Não Interativo:** Automação de `wipefs -a` e criação de tabelas GPT com `sfdisk` e volumes LVM (`pvcreate`, `vgcreate`, `lvcreate`).
- **Configuração de Interfaces de Rede Estáticas e Bonding (LACP):** Montagem de arquivos de configuração `netplan` em conformidade com a VLAN do rack do servidor.

## 🛠️ Ferramentas Nativas Utilizadas
- `sfdisk`, `wipefs` (particionamento programático de discos de alta capacidade)
- `lsblk`, `lshw` (descoberta e inventário de hardware do nó)
- `yq` / `awk` (geração e validação de estruturas YAML sem erros de indentação)
- `curl` (download de imagens base de sistema operacional com verificação de SHA-256)

## 📌 Exemplo de Execução
```bash
./provision_baremetal.sh --hostname "nyc-db-node03" --mac "52:54:00:12:34:56" --disk "/dev/nvme0n1" --vlan 104
```

