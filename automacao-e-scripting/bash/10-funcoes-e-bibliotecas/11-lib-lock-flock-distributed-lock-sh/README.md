# 11 — Gerenciador de Bloqueios Concorrentes Locais e Distribuídos (flock)

## 🏢 Cenário de Negócios e Produção Real
Garantia de que apenas uma instância de um script execute operações de escrita em recursos compartilhados.

### ⚠️ O Problema Real
Criar arquivos .lock com 'touch' sofre de race condition (condição de corrida) quando dois processos checam ao mesmo tempo.

## 🚀 Arquitetura e Engenharia em Bash
Módulo de locking baseado na chamada de sistema flock (utilizando descritor de arquivo aberto via 'exec 200>file'), com suporte a timeout não bloqueante e liberação automática no fechamento do processo.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`flock, exec`

## 📌 Exemplo de Execução CLI
```bash
source lib/lock.sh && acquire_lock /var/lock/app.lock 5 || exit 1
```
