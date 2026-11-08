# 06 — Entregador Seguro de Pacotes e Atualizações para Ambientes Isolados (Air-Gapped)

## 🏢 Cenário de Negócios e Produção Real
Instalação de novas versões de software em servidores que não têm nenhuma conexão física ou lógica com a internet.

### ⚠️ O Problema Real
Copiar arquivos via pendrive sem checagem prévia pode introduzir malwares ou pacotes com dependências quebradas.

## 🚀 Arquitetura e Engenharia em Bash
Download de pacotes e árvore completa de dependências na máquina conectada, verificação de assinaturas digitais e hashes SHA-256, criação de arquivo bundle criptografado e script de importação e instalação local offline no ambiente isolado.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`apt-get, reprepro, gpg, tar, sha256sum`

## 📌 Exemplo de Execução CLI
```bash
./airgap_courier.sh --package postgresql-16 --output /transfer/bundle.tar.gz
```
