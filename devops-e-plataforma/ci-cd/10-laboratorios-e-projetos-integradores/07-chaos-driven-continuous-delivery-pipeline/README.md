# 07 — Entrega Contínua Orientada a Caos: Validação de Resiliência Automática Pré-Deploy

## 🏢 Cenário de Produção e Vida Real
Homologação de aplicações que não podem falhar mesmo diante de quedas parciais de rede ou hardware.

### ⚠️ O Problema Real
Testes tradicionais validam apenas o caminho feliz e não testam comportamento diante de falhas de infraestrutura.

## 🚀 Arquitetura e Engenharia de CI/CD
Pipeline que faz o deploy da aplicação em staging, inicia gerador de tráfego de carga com k6, injeta falhas controladas com Chaos Mesh (latência de 200ms, morte aleatória de pods) e valida se a taxa de erros permaneceu abaixo de 0.1%.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`chaos-mesh, k6, kubectl, jq`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
./chaos_cd_verification.sh --app core-api --experiment network-delay
```
