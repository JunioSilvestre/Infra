# 17 — Gerenciador de Revogação de Certificados de Clientes OpenVPN e Geração de CRL

## 🏢 Cenário de Negócios e Produção Real
Administração de VPN corporativa para centenas de colaboradores remotos.

### ⚠️ O Problema Real
Quando um colaborador perde o notebook corporativo, seu acesso à VPN deve ser revogado em segundos.

## 🚀 Arquitetura e Engenharia em Bash
Revogação de certificado via openssl/easy-rsa, geração da lista de revogação atualizada (crl.pem), cópia atômica para o diretório do OpenVPN e envio de sinal SIGHUP para recarregar a CRL sem derrubar outros usuários.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`openssl, systemctl, cp, diff`

## 📌 Exemplo de Execução CLI
```bash
./vpn_revoke.sh --client-cn 'user.silva' --crl-path /etc/openvpn/crl.pem --reload
```
