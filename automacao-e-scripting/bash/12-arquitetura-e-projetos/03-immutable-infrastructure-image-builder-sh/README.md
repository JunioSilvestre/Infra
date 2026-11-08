# 03 — Construtor Automatizado de Imagens de Servidor Imutáveis com Packer e Bash

## 🏢 Cenário de Negócios e Produção Real
Criação padronizada de AMIs da AWS, imagens QCOW2 e templates VMware sem configurações manuais.

### ⚠️ O Problema Real
Servidores configurados manualmente ao longo do tempo acumulam configurações divergentes e tornam-se impossíveis de reproduzir.

## 🚀 Arquitetura e Engenharia em Bash
Pipeline em Bash puro que orquestra a inicialização de uma máquina temporária limpa, executa scripts de hardening, instala pacotes aprovados, zera chaves de SSH e logs, e gera a imagem de disco imutável pronta para escala.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`qemu-img, packer, virt-sysprep, shred`

## 📌 Exemplo de Execução CLI
```bash
./build_immutable_image.sh --os ubuntu-24.04 --profile hardened-db --target ami
```
