# 17 — Hardening Estrito de Ciphers, MACs e Troca de Chaves (KEX) do OpenSSH

## 🏢 Cenário de Negócios e Produção Real
Auditoria de vulnerabilidades de conformidade PCI-DSS e NIST exigindo desativação de algoritmos legados (diffie-hellman-group1-sha1, 3des-cbc, SHA1).

### ⚠️ O Problema Real
Configurações padrão antigas do SSH permitem ataques de decodificação de tráfego capturado.

## 🚀 Arquitetura e Engenharia em Bash
Varredura do sshd_config atual, aplicação atômica de cifras modernas recomendadas (curve25519-sha256, chacha20-poly1305@openssh.com, aes256-gcm@openssh.com), teste de sintaxe com 'sshd -t' e reload seguro.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`sshd, sed, ssh-keyscan, systemctl`

## 📌 Exemplo de Execução CLI
```bash
./ssh_hardening.sh --profile modern-nist --test-reload
```
