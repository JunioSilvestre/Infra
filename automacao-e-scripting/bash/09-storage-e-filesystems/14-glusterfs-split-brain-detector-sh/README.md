# 14 — Detector e Notificador de Split-Brain em Volumes Replicados GlusterFS

## 🏢 Cenário de Negócios e Produção Real
Storage distribuído GlusterFS operando com replicação de dados entre múltiplos nós de servidores.

### ⚠️ O Problema Real
Partições de rede deixam versões divergentes do mesmo arquivo em nós diferentes (Split-Brain).

## 🚀 Arquitetura e Engenharia em Bash
Inspeção contínua via 'gluster volume heal <vol> info split-brain', contagem de arquivos divergentes, geração de lista de caminhos afetados e alerta urgente para intervenção do time de storage.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`gluster, awk, mailx, logger`

## 📌 Exemplo de Execução CLI
```bash
./gluster_splitbrain_audit.sh --volume data-replica --alert
```
