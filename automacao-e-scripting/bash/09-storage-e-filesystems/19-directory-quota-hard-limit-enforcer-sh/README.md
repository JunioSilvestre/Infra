# 19 — Enforcer e Auditor de Limites Rígidos de Diretórios com XFS Project Quotas

## 🏢 Cenário de Negócios e Produção Real
Hospedagem de múltiplos clientes no mesmo sistema de arquivos XFS sem permitir que um cliente lote o disco dos demais.

### ⚠️ O Problema Real
Cotas tradicionais de usuário não funcionam quando múltiplos processos ou usuários compartilham a mesma pasta da aplicação.

## 🚀 Arquitetura e Engenharia em Bash
Configuração de Project Quotas do XFS via 'xfs_quota -x -c "project -s ..."', definição de limites rígidos (bhard) e suaves (bsoft) por ID de projeto e relatório de consumo.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`xfs_quota, awk, column, logger`

## 📌 Exemplo de Execução CLI
```bash
./xfs_project_quota.sh --dir /srv/tenants/client1 --project-id 101 --limit 50G
```
