# 12 — Distribuidor de Atualizações Over-The-Air (OTA) com Rollback Atômico para Servidores Edge

## 🏢 Cenário de Negócios e Produção Real
Atualização de dezenas de servidores de borda (Edge Computing) e gateways industriais com links de internet instáveis.

### ⚠️ O Problema Real
Uma atualização interrompida pela metade por queda de conexão deixa o dispositivo em estado 'tijolo' (brickado).

## 🚀 Arquitetura e Engenharia em Bash
Download do pacote de atualização com verificação de integridade SHA-256 e assinatura GPG, aplicação em partição de sistema inativa (esquema de partições duplas A/B), alteração do ponteiro de boot no GRUB/U-Boot e teste de saúde com rollback automático se o novo sistema não validar em 5 minutos.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`grub-reboot, sha256sum, gpg, curl`

## 📌 Exemplo de Execução CLI
```bash
./ota_deploy.sh --package update-v2.bin --target-slot B --verify-timeout 300
```
