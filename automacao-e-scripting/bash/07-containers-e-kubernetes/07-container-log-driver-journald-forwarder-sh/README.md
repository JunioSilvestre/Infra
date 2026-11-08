# 07 — Configurador e Validador de Log Drivers de Containers com Journald e Rotação Local

## 🏢 Cenário de Negócios e Produção Real
Servidores Docker que travam porque os logs JSON padrão (/var/lib/docker/containers/*-json.log) crescem até lotar 100% do disco.

### ⚠️ O Problema Real
O driver json-file sem rotação configurada consome todo o espaço do sistema de arquivos raiz.

## 🚀 Arquitetura e Engenharia em Bash
Atualização atômica do /etc/docker/daemon.json aplicando driver 'journald' ou 'json-file' com 'max-size: 50m' e 'max-file: 3', validação sintática do JSON e envio de sinal SIGHUP para o dockerd sem reiniciar containers.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`jq, dockerd, systemctl, df`

## 📌 Exemplo de Execução CLI
```bash
./configure_docker_logs.sh --max-size 50m --max-files 3 --reload
```
