# 05 — Verificador de Idempotência: Teste de Execução Repetida de Scripts de Infraestrutura

## 🏢 Cenário de Negócios e Produção Real
Garantia de que scripts de configuração possam rodar duas ou mais vezes seguidas sem alterar o estado do sistema na segunda execução.

### ⚠️ O Problema Real
Scripts que não são idempotentes duplicam linhas em arquivos de configuração ou quebram se um recurso já existe.

## 🚀 Arquitetura e Engenharia em Bash
Execução da primeira rodada gravando o snapshot do sistema (arquivos, portas, serviços), execução imediata da segunda rodada e verificação estrita de que zero alterações adicionais ocorreram (diff de estado limpo).

## 🛠️ Ferramentas Nativas Linux Utilizadas
`git, diff, find, ss`

## 📌 Exemplo de Execução CLI
```bash
./verify_idempotency.sh --script ./configure_server.sh --track-dir /etc
```
