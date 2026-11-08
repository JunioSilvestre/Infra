# 05 — Higienizador e Purgador de Tags Antigas em Registries Docker Privados

## 🏢 Cenário de Negócios e Produção Real
Registry privado de containers (Harbor, Nexus ou Docker Registry v2) acumulando terabytes de imagens obsoletas.

### ⚠️ O Problema Real
Custos gigantescos de storage cloud por retenção infinita de builds de branches já deletadas.

## 🚀 Arquitetura e Engenharia em Bash
Consulta via API REST v2 do Registry, listagem de tags, identificação de tags associadas a PRs fechados ou mais antigas que a política de retenção, remoção via manifesto digest e disparo do garbage collector do registry.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`curl, jq, awk, date`

## 📌 Exemplo de Execução CLI
```bash
./registry_cleaner.sh --registry 'https://registry.corp.net' --repo 'api-auth' --keep-tags 10
```
