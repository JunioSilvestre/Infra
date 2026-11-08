# 19 — Detector Universal de Distribuição Linux e Versão de Pacotes

## 🏢 Cenário de Negócios e Produção Real
Scripts universais que precisam funcionar de forma transparente em Ubuntu, Debian, RHEL, Rocky Linux, Alpine e Amazon Linux.

### ⚠️ O Problema Real
Comandos de pacotes e nomes de serviços variam entre famílias Debian e RedHat (ex: apache2 vs httpd).

## 🚀 Arquitetura e Engenharia em Bash
Parser robusto de /etc/os-release identificando ID, VERSION_ID e ID_LIKE, exportando variáveis globais 'OS_FAMILY', 'PKG_MANAGER' e funções wrapper para instalação agnóstica de pacotes.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`/etc/os-release, grep, cut`

## 📌 Exemplo de Execução CLI
```bash
source lib/distro.sh && echo "Rodando em: $OS_FAMILY ($PKG_MANAGER)"
```
