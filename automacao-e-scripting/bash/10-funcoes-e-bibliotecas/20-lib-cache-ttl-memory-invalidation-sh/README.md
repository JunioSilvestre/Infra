# 20 — Cache em Memória Local com Suporte a TTL (Time-To-Live) para Scripts

## 🏢 Cenário de Negócios e Produção Real
Scripts que executam comandos lentos ou chamadas de API repetidamente em intervalos curtos.

### ⚠️ O Problema Real
Consultar a mesma informação externa dezenas de vezes atrasa a execução e esgota rate limits.

## 🚀 Arquitetura e Engenharia em Bash
Implementação de cache chave-valor simples armazenado em /dev/shm com arquivos de metadados contendo timestamp de criação, checagem de expiração TTL em segundos e invalidação atômica sob demanda.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`/dev/shm, date, cat, rm`

## 📌 Exemplo de Execução CLI
```bash
source lib/cache.sh && cache_get 'my_key' 300 || (result=$(heavy_cmd) && cache_set 'my_key' "$result")
```
