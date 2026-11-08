# 03 — Gerenciador de Sinais e Limpeza Atômica de Recursos com Trap

## 🏢 Cenário de Negócios e Produção Real
Scripts que criam arquivos temporários, abrem portas de rede ou montam diretórios e precisam garantir limpeza mesmo em caso de CTRL+C (SIGINT) ou kill (SIGTERM).

### ⚠️ O Problema Real
Interrupções inesperadas deixam arquivos de lock, diretórios temporários e conexões presas no sistema.

## 🚀 Arquitetura e Engenharia em Bash
Biblioteca que registra uma pilha de funções de limpeza (stack de callbacks 'defer'), executando-as em ordem reversa no evento de EXIT, SIGINT, SIGTERM ou ERR, preservando o código de saída original ($?).

## 🛠️ Ferramentas Nativas Linux Utilizadas
`trap, mktemp, rm`

## 📌 Exemplo de Execução CLI
```bash
source lib/trap.sh && tmp=$(register_temp_dir) && defer "echo 'Limpando conexão'"
```
