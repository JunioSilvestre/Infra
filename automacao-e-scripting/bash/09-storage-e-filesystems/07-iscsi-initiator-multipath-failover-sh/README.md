# 07 — Gerenciador e Validador de Caminhos Multipath iSCSI com iscsiadm

## 🏢 Cenário de Negócios e Produção Real
Conexão de servidores Linux a SANs de alta performance via múltiplos cabos de rede e switches separados.

### ⚠️ O Problema Real
Falha de um switch de SAN derruba conexões de storage se o multipathd não comutar o caminho de I/O.

## 🚀 Arquitetura e Engenharia em Bash
Descoberta de targets via 'iscsiadm -m discovery', login nas sessões de todos os portais, verificação do status dos caminhos com 'multipath -ll' garantindo redundância ativa (round-robin ou service-time).

## 🛠️ Ferramentas Nativas Linux Utilizadas
`iscsiadm, multipath, multipathd, lsblk`

## 📌 Exemplo de Execução CLI
```bash
./iscsi_multipath_sync.sh --target-ip 10.0.10.1 --check-redundancy
```
