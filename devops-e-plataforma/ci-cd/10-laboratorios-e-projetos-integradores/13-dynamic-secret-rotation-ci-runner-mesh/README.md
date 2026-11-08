# 13 — Malha de Runners com Rotação Dinâmica de Segredos e Credenciais Just-in-Time (JIT)

## 🏢 Cenário de Produção e Vida Real
Eliminação de credenciais com permissões persistentes em servidores de integração contínua.

### ⚠️ O Problema Real
Se um runner for comprometido, atacantes podem utilizar credenciais salvas para invadir outros sistemas.

## 🚀 Arquitetura e Engenharia de CI/CD
Mecanismo que emite credenciais temporárias do HashiCorp Vault ou AWS STS válidas exclusivamente pela duração do job de CI, revogando o acesso automaticamente no momento do término do pipeline.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`vault, aws-sts, curl, jq`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
./request_jit_credentials.sh --role ci-deployer --ttl 15m
```
