# 04 — Scanner e Auditor de Binários com Bits SUID e SGID Não Autorizados

## 🏢 Cenário de Negócios e Produção Real
Detecção de persistência e backdoors criados por invasores que atribuem permissão SUID (chmod 4755) em executáveis comuns.

### ⚠️ O Problema Real
Qualquer binário SUID desconhecido permite que usuários sem privilégio executem código como root.

## 🚀 Arquitetura e Engenharia em Bash
Varredura completa dos sistemas de arquivos locais ('find / -xdev -type f -perm /6000'), comparação contra baseline conhecida e aprovada, remoção imediata da flag SUID em binários desconhecidos e alerta urgente.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`find, stat, diff, chmod, sha256sum`

## 📌 Exemplo de Execução CLI
```bash
./suid_scanner.sh --baseline /etc/security/suid_baseline.txt --enforce-strip
```
