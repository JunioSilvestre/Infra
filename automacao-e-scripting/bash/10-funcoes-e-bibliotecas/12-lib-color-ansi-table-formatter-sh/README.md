# 12 — Formatador de Interfaces de Terminal com Cores ANSI, Caixas e Tabelas

## 🏢 Cenário de Negócios e Produção Real
Apresentação de resultados de scripts e diagnósticos de infraestrutura de forma clara e visual para operadores.

### ⚠️ O Problema Real
Scripts que imprimem saídas desordenadas dificultam a visualização rápida de erros e avisos.

## 🚀 Arquitetura e Engenharia em Bash
Funções de estilo 'print_banner', 'print_table', 'print_success', 'print_error' com detecção automática de suporte a cores (desativando cores se stdout não for TTY ou se NO_COLOR=1 estiver definido).

## 🛠️ Ferramentas Nativas Linux Utilizadas
`tput, printf, column`

## 📌 Exemplo de Execução CLI
```bash
source lib/ui.sh && print_banner 'DIAGNÓSTICO DE REDE' && print_table 'STATUS,IP,LATÊNCIA'
```
