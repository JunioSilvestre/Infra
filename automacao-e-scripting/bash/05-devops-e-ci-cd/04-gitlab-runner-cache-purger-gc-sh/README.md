# 04 — Limpador e Coletor de Lixo (Garbage Collection) de Caches do GitLab Runner

## 🏢 Cenário de Negócios e Produção Real
Servidores dedicados a GitLab Runners onde caches de build de Docker e npm lotam o disco em poucos dias.

### ⚠️ O Problema Real
Discos a 100% causam falha imediata em todos os pipelines da empresa simultaneamente.

## 🚀 Arquitetura e Engenharia em Bash
Varredura de diretórios de cache e imagens antigas de containers (docker system prune), identificação de caches não acessados há mais de 7 dias com 'find -atime +7', purga atômica e relatório de espaço recuperado.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`find, docker, du, df, xargs`

## 📌 Exemplo de Execução CLI
```bash
./runner_gc.sh --max-age-days 7 --disk-threshold 85 --clean-docker
```
