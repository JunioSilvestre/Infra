# 13 — Expurgo e Política de Retenção de Binários em Nexus/Artifactory

## 🏢 Cenário de Negócios e Produção Real
Repositórios de artefatos (.tar.gz, .rpm, .deb, .jar) consumindo gigabytes de armazenamento com builds temporários de feature branches.

### ⚠️ O Problema Real
Custos exorbitantes de storage e lentidão nas consultas de artefatos pela equipe.

## 🚀 Arquitetura e Engenharia em Bash
Consulta via API REST do Nexus/Artifactory (AQL - Artifactory Query Language), filtro de artefatos snapshot ou não baixados há mais de 60 dias, exclusão em lote e reconciliação de espaço livre.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`curl, jq, xargs, date`

## 📌 Exemplo de Execução CLI
```bash
./artifact_prune.sh --artifactory-url 'https://artifactory.corp' --repo libs-snapshot --days 60
```
