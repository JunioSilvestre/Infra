# 04 — Sincronizador e Auditor de Contas entre Microsoft Active Directory e OpenLDAP/Linux PAM

## 🏢 Cenário de Negócios e Produção Real
Ambientes corporativos com servidores Linux que precisam autenticar usuários corporativos sincronizados do Windows AD.

### ⚠️ O Problema Real
Defasagem na sincronização de usuários e grupos deixa colaboradores demitidos com acesso a servidores Linux.

## 🚀 Arquitetura e Engenharia em Bash
Consultas LDAP via ldapsearch com autenticação Kerberos/GSSAPI, identificação de contas desativadas no AD (UserAccountControl), atualização dos bancos locais SSSD/nslcd e bloqueio imediato de sessões no PAM.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`ldapsearch, kinit, sssd, awk`

## 📌 Exemplo de Execução CLI
```bash
./ad_ldap_sync.sh --domain corp.net --sync-groups --prune-orphans
```
