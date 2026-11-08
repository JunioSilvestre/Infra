# 05 — Provisionador e Mapeador de Volumes de Bloco Ceph RBD em Nós de Computação

## 🏢 Cenário de Negócios e Produção Real
Ambientes de virtualização e banco de dados rodando sobre armazenamento distribuído Ceph.

### ⚠️ O Problema Real
Mapear pools Ceph manualmente em cada nó é propenso a erros de configuração de chave e parâmetros de cache.

## 🚀 Arquitetura e Engenharia em Bash
Criação de imagem RBD via 'rbd create --size 100G pool/imagem', mapeamento seguro com 'rbd map', criação de sistema de arquivos XFS com parâmetros otimizados para Ceph e montagem persistente.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`rbd, mkfs.xfs, mount, lsblk`

## 📌 Exemplo de Execução CLI
```bash
./ceph_provision.sh --pool fast-vms --image db-storage --size 200G --mount /srv/ceph_db
```
