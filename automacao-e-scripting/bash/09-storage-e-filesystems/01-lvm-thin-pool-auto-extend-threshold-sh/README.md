# 01 — Expansor Automático de Thin Pools LVM com Base em Limiar de Ocupação

## 🏢 Cenário de Negócios e Produção Real
Uso de LVM Thin Provisioning para alocar espaço sob demanda em máquinas virtuais e containers.

### ⚠️ O Problema Real
Se um thin pool atinge 100% de uso de dados ou metadados, todas as escritas no pool travam e corrompem dados.

## 🚀 Arquitetura e Engenharia em Bash
Consulta via 'lvs --noheadings -o data_percent,metadata_percent', cálculo do consumo contra limiar de 80%, execução de 'lvextend -L +20G /dev/vg/thinpool' de forma atômica e registro de log de auditoria.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`lvs, lvextend, awk, logger`

## 📌 Exemplo de Execução CLI
```bash
./lvm_thin_autoextend.sh --pool vg_prod/thin_data --threshold 80 --grow-by 20G
```
