# 04 — Enforcer de Imutabilidade de Tags e Políticas de Retenção no Harbor Registry

## 🏢 Cenário de Produção e Vida Real
Prevenção de sobrescrita de imagens de containers já publicadas em produção.

### ⚠️ O Problema Real
Um desenvolvedor faz push de uma nova imagem com a mesma tag 'v1.0.0', substituindo o que está rodando em produção sem rastreabilidade.

## 🚀 Arquitetura e Engenharia de CI/CD
Configuração via API do Harbor de regras de imutabilidade de tags (Tag Immutability Rules) para padrões semânticos ('v*.*.*'), rejeitando qualquer tentativa de sobrescrita com erro 409 Conflict.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`curl, jq, harbor-api`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
./enforce_harbor_immutability.sh --registry 'https://harbor.corp' --project core-apps
```
