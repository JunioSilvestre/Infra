# 10 — Autoridade Certificadora (CA) SSH para Emissão de Certificados de Usuário e Host

## 🏢 Cenário de Negócios e Produção Real
Substituição do gerenciamento manual de ~/.ssh/authorized_keys por certificados criptográficos efêmeros de SSH.

### ⚠️ O Problema Real
Distribuir chaves públicas por milhares de servidores é lento e inseguro contra revogação de acessos.

## 🚀 Arquitetura e Engenharia em Bash
Emissão de certificados SSH assinados com chave privada CA ('ssh-keygen -s ca_key -I identity -V +8h user.pub'), configuração do sshd_config para confiar na CA (TrustedUserCAKeys) e expiração automática.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`ssh-keygen, openssl, date, install`

## 📌 Exemplo de Execução CLI
```bash
./ssh_ca_signer.sh --user-pub /tmp/dev.pub --principals 'devops,sre' --validity '+8h'
```
