# 17 — Analisador Estático de Variáveis de Ambiente Não Validadas (Taint Analysis)

## 🏢 Cenário de Negócios e Produção Real
Auditoria de segurança para garantir que variáveis de ambiente externas não contenham injeção de comandos.

### ⚠️ O Problema Real
Scripts que confiam cegamente em variáveis vindas do usuário (ex: $DEST_DIR) são vulneráveis se o valor contiver ';' ou '|'.

## 🚀 Arquitetura e Engenharia em Bash
Parser que rastreia a origem de variáveis lidas de 'getenv' ou passadas via CLI, checando se há sanitização antes de serem utilizadas em comandos 'eval', subshells ou caminhos de arquivo.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`shellcheck, grep, awk`

## 📌 Exemplo de Execução CLI
```bash
./taint_check.sh --script ./deploy.sh
```
