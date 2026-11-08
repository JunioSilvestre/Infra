# 04 — Orquestrador Integrado de Co-Deploy de Aplicação e Migração de Banco Zero-Downtime

## 🏢 Cenário de Produção e Vida Real
Deploy coordenado entre alterações de schema em banco relacional e novas versões de microsserviços.

### ⚠️ O Problema Real
Deploys de banco desincronizados do deploy de aplicação gerando falhas de queries durante o rollout.

## 🚀 Arquitetura e Engenharia de CI/CD
Orquestrador que executa migrações não-bloqueantes (Expand), roda testes de compatibilidade retroativa, efetua o rollout canário da aplicação, valida tráfego e dispara a fase de limpeza (Contract).

## 🛠️ Ferramentas e Tecnologias Utilizadas
`flyway, kubectl, curl, jq`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
./co_deploy.sh --app billing --db-migration v4.2 --canary-weight 10
```
