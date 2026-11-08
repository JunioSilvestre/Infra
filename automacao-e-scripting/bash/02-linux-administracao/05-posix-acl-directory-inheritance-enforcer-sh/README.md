# 05 — Auditor e Enforcer de Herança de Permissões POSIX ACL

## 🏢 Cenário de Negócios e Produção Real
Diretórios compartilhados de projetos multi-usuário onde novos arquivos criados perdem permissões de grupo.

### ⚠️ O Problema Real
Usuários criam arquivos com umask restritiva (0077), impedindo que outros membros do grupo leiam ou editem os arquivos compartilhados.

## 🚀 Arquitetura e Engenharia em Bash
Aplicação recursiva de Default ACLs (setfacl -d -m g:projeto:rwx), auditoria contínua com getfacl e correção de anomalias sem alterar permissões proprietárias.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`setfacl, getfacl, find, xargs`

## 📌 Exemplo de Execução CLI
```bash
./acl_enforcer.sh --path /srv/shared/projects --group devteam --enforce-default
```
