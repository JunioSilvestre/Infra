# 10 — Deploy Coordenado Multi-Região Ativo-Ativo com Verificação de Saúde Geográfica

## 🏢 Cenário de Produção e Vida Real
Atualização de serviços distribuídos globalmente (América do Norte, Europa e Ásia).

### ⚠️ O Problema Real
Atualizar todas as regiões simultaneamente pode causar indisponibilidade global caso a release contenha um bug.

## 🚀 Arquitetura e Engenharia de CI/CD
Estratégia de implantação em ondas: deploy na região de menor tráfego primeiro (Canary Region), monitoramento de estabilidade por 1 hora e propagação sequencial para as demais regiões com trava de segurança.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`aws-cli, jq, curl, bash`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
./multi_region_deploy.sh --stages 'eu-west-1,us-east-1,ap-southeast-1' --bake-time 60
```
