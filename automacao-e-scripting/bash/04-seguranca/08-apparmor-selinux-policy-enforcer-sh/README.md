# 08 — Auditor e Aplicador de Perfis AppArmor / SELinux para Daemons Críticos

## 🏢 Cenário de Negócios e Produção Real
Servidores expostos na internet rodando Nginx, PHP-FPM ou Node.js que devem ser confinados pelo sistema Mandatory Access Control (MAC).

### ⚠️ O Problema Real
Administradores desativam o SELinux ou colocam o AppArmor em modo 'complain' para driblar erros de permissão.

## 🚀 Arquitetura e Engenharia em Bash
Verificação do modo atual (enforcing vs permissive), varredura de violações com 'ausearch -m avc' ou 'aa-status', geração automatizada de relatórios de negações e colocação compulsória dos perfis essenciais em modo 'enforce'.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`aa-status, aa-enforce, sestatus, setenforce, audit2why`

## 📌 Exemplo de Execução CLI
```bash
./mac_enforcer.sh --system apparmor --enforce-all --report /var/log/mac_audit.log
```
