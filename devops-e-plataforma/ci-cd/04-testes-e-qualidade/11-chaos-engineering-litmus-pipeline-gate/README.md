# 11 — Testes de Caos em CI com LitmusChaos e Verificação de Tolerância a Falhas

## 🏢 Cenário de Produção e Vida Real
Validação de que a aplicação se recupera automaticamente da queda súbita de pods ou latência de rede antes de ir para produção.

### ⚠️ O Problema Real
Aplicações que travam completamente se uma réplica cair por 10 segundos.

## 🚀 Arquitetura e Engenharia de CI/CD
Injeção programada de caos em ambiente de testes efêmero (pod-delete, packet-loss), monitoramento das métricas da aplicação e validação de que nenhuma requisição de cliente falhou.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`litmusctl, kubectl, k6`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
litmusctl create experiment -f experiments/pod-delete.yaml
```
