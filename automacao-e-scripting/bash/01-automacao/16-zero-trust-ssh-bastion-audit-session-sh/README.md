# 16 — Zero Trust SSH Bastion & Interactive Session Auditor (Bash)

Script de controle de acesso Zero Trust em Bash para servidores Bastion (Jump Hosts) com gravação completa de sessões interativas, bloqueio de comandos perigosos e log imutável.

## 🏢 Cenário de Negócios (Auditoria SOC2 / FINRA — Acesso a Produção)
Instituições financeiras e corretoras de Nova York precisam auditar cada tecla digitada por engenheiros e prestadores de serviço em servidores de produção. Este script substitui a shell padrão do usuário no Bastion, gravando toda a sessão de terminal com timestamps auditáveis e bloqueando comandos destrutivos.

## 🚀 Arquitetura e Engenharia em Bash
- **Shell Wrapper como Shell de Login:** Configuração do script como `/usr/local/bin/bastion-shell` em `/etc/passwd`.
- **Gravação de Sessão com `script` e `ttyrec`:** Captura de entrada/saída de terminal com carimbo de milissegundos para reprodução fiel (`scriptreplay`).
- **Filtro de Comandos Perigosos:** Bloqueio em tempo real de padrões como `rm -rf /`, `mkfs`, tentativas de tunneling não autorizadas (`ssh -L`) e escapes de shell.
- **Transmissão Imediata para Servidor de Custódia:** Envio dos logs de sessão fechados para storage remoto com garantia de não alteração local.
- **Trap de Desconexão Forçada:** Encerramento imediato do subshell em caso de perda de sinal `SIGHUP`.

## 🛠️ Ferramentas Nativas Utilizadas
- `script` / `scriptreplay` (gravação de terminal TTY com sincronização de tempo)
- `logger` (envio de metadados de autenticação e sessão para o SIEM)
- `chattr` (travamento de arquivos de auditoria em modo append-only `+a`)
- `awk`, `sed` (inspeção de comandos antes da execução)

## 📌 Exemplo de Execução
```bash
# Definido automaticamente como login shell do usuário no Bastion
bastion-shell --user "eng.silva" --session-id "sess-20261105-01" --target "prod-db-01"
```

