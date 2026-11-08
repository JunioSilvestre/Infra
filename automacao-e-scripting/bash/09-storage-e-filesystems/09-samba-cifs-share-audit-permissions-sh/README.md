# 09 — Auditor de Permissões e Sessões Ativas em Compartilhamentos Samba / CIFS

## 🏢 Cenário de Negócios e Produção Real
Compartilhamento de arquivos corporativos integrado com Active Directory.

### ⚠️ O Problema Real
Pastas com arquivos confidenciais abertas com permissão 'Everyone' ou conexões travadas segurando arquivos de planilhas.

## 🚀 Arquitetura e Engenharia em Bash
Inspeção do smb.conf via testparm, auditoria de sessões e arquivos bloqueados com 'smbstatus -L', verificação de permissões Unix locais dos compartilhamentos e reporte de inconformidades.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`testparm, smbstatus, find, awk`

## 📌 Exemplo de Execução CLI
```bash
./samba_audit.sh --config /etc/samba/smb.conf --check-open-files
```
