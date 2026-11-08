# 05 — Provisionador e Auditor de Autenticação Multifator (MFA/TOTP) para SSH

## 🏢 Cenário de Negócios e Produção Real
Obrigatoriedade de segundo fator (MFA) para todos os administradores com acesso shell via SSH.

### ⚠️ O Problema Real
Configurar PAM manualmente em dezenas de servidores frequentemente tranca administradores para fora do sistema.

## 🚀 Arquitetura e Engenharia em Bash
Geração do segredo TOTP via google-authenticator em lote, configuração atômica do /etc/pam.d/sshd e /etc/ssh/sshd_config (ChallengeResponseAuthentication yes), verificação prévia de sintaxe e testes de sessão de contingência.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`google-authenticator, sed, sshd, systemctl`

## 📌 Exemplo de Execução CLI
```bash
./enforce_mfa.sh --target-user sre.admin --emergency-scratch-codes 5
```
