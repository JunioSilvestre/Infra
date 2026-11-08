# 11 — Deployer Seguro de Regras Sudoers com Validação Sintática via visudo

## 🏢 Cenário de Negócios e Produção Real
Distribuição automatizada de regras de permissão administrativa em /etc/sudoers.d/ para equipes e agentes de automação.

### ⚠️ O Problema Real
Um erro de sintaxe em um arquivo dentro de /etc/sudoers.d/ quebra o sudo para todos os administradores da máquina.

## 🚀 Arquitetura e Engenharia em Bash
Criação de arquivos temporários, validação obrigatória e atômica com 'visudo -c -f /tmp/regra', ajuste de permissões para 0440 e substituição atômica.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`visudo, install, diff, logger`

## 📌 Exemplo de Execução CLI
```bash
./deploy_sudoers.sh --file devops_sudo --source /templates/devops.sudoers --dry-run
```
