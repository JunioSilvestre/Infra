# 10 — Gerenciador e Auditor de Políticas de Expulso (Cleanup Policies) no Sonatype Nexus

## 🏢 Cenário de Produção e Vida Real
Manutenção do uso de disco de servidores Nexus que armazenam terabytes de artefatos Maven, npm e Docker.

### ⚠️ O Problema Real
O disco do Nexus atinge 100% de uso e corrompe o banco OrientDB/H2 de metadados.

## 🚀 Arquitetura e Engenharia de CI/CD
Definição declarativa de Cleanup Policies via API REST do Nexus (expurgo de SNAPSHOTs com mais de 30 dias e releases não baixadas há mais de 180 dias), com agendamento do compact blob store.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`curl, jq, nexus-api`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
./nexus_cleanup_sync.sh --nexus-url 'https://nexus.corp' --apply-policies
```
