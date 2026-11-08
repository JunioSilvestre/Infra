# 10 — Testador de Queda de Privilégio Seguro de Root para Usuário Não Privilegiado

## 🏢 Cenário de Negócios e Produção Real
Daemons e scripts que iniciam como root para bindar portas baixas (<1024) e depois precisam derrubar privilégios para segurança.

### ⚠️ O Problema Real
Implementações incorretas mantêm capabilities do kernel ou IDs suplementares ativos, permitindo escalonamento de privilégio posterior.

## 🚀 Arquitetura e Engenharia em Bash
Execução sob 'su-exec' ou 'setpriv', validação de UID/GID efetivos via /proc/self/status, inspeção de Capabilities (CapEff, CapPrm) e verificação de que o processo não consegue mais acessar arquivos protegidos.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`setpriv, capsh, /proc/self/status, id`

## 📌 Exemplo de Execução CLI
```bash
./test_privilege_drop.sh --user nobody --check-capabilities
```
