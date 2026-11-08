# 11 — Testador de Resiliência a Sinais do Sistema (SIGINT, SIGTERM, SIGHUP)

## 🏢 Cenário de Negócios e Produção Real
Garantia de que scripts interrompidos abruptamente pelo orquestrador ou usuário terminem de forma limpa.

### ⚠️ O Problema Real
Processos em background órfãos continuam rodando indefinidamente se o script pai for morto com SIGTERM.

## 🚀 Arquitetura e Engenharia em Bash
Harness de teste que inicia o script em background, envia sinais sucessivos ('kill -SIGINT $PID', 'kill -SIGTERM $PID') e valida se o handler do trap executou os callbacks e finalizou os processos filhos.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`kill, pgrep, ps, sleep`

## 📌 Exemplo de Execução CLI
```bash
./test_signals.sh --target-script ./worker.sh --timeout 5
```
