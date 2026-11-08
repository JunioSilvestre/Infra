# 07 — Roteador de Failover Multi-Região e Latência Dinâmica no AWS Route 53

## 🏢 Cenário de Negócios e Produção Real
Aplicações globais operando com redundância ativa em us-east-1 (Norte da Virgínia) e us-west-2 (Oregon).

### ⚠️ O Problema Real
Indisponibilidade regional massiva da AWS requer comutação instantânea de DNS com verificação prévia.

## 🚀 Arquitetura e Engenharia em Bash
Criação programática de Health Checks no Route 53 via CLI, verificação externa de código de status HTTP e latência, alteração atômica do ResourceRecordSet no Route 53 para direcionar 100% dos usuários para a região saudável.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`aws, jq, curl, date`

## 📌 Exemplo de Execução CLI
```bash
./route53_failover.sh --hosted-zone-id Z12345 --record api.jcscode.com --promote-region us-west-2
```
