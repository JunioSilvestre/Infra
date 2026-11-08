# 15 — Menu Interativo de Seleção e Confirmação Segura para Operações Destrutivas

## 🏢 Cenário de Negócios e Produção Real
Ferramentas CLI administrativas onde o operador humano deve confirmar ações com impacto em produção.

### ⚠️ O Problema Real
Scripts que aceitam 'Enter' acidental em prompts de deleção causam perda irreversível de dados.

## 🚀 Arquitetura e Engenharia em Bash
Funções 'confirm_action' (exigindo digitação explícita do nome do ambiente ou 'SIM') e 'select_menu' (menu navegável com setas ou numérico com validação estrita e suporte a timeout automático).

## 🛠️ Ferramentas Nativas Linux Utilizadas
`read, tput, stty`

## 📌 Exemplo de Execução CLI
```bash
source lib/prompt.sh && confirm_destructive 'DESTRUIR BASE PROD' || exit 0
```
