# 17 — Drenador Gracioso de Instâncias em Target Groups de Application Load Balancer (ALB)

## 🏢 Cenário de Negócios e Produção Real
Manutenção em servidores web atrás de balanceadores AWS ALB sem derrubar requisições em andamento.

### ⚠️ O Problema Real
Parar a máquina direto gera falhas de conexão 504 Gateway Timeout para os clientes.

## 🚀 Arquitetura e Engenharia em Bash
Comunicação com a API de balanceamento (aws elbv2 deregister-targets), monitoramento contínuo do status do alvo até atingir 'unused' (tempo de connection draining configurado), autorizando a manutenção com segurança total.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`aws, jq, sleep, logger`

## 📌 Exemplo de Execução CLI
```bash
./alb_drain.sh --target-group-arn '$TG_ARN' --instance-id i-0123456789 --wait-complete
```
