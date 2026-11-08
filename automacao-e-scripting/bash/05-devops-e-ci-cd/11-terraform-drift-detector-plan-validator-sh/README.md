# 11 — Detector de Desvio (Drift) de Infraestrutura Terraform com Alertas Diários

## 🏢 Cenário de Negócios e Produção Real
Grandes infraestruturas cloud onde alterações manuais feitas via console web criam desvios do código Terraform.

### ⚠️ O Problema Real
No próximo deploy do Terraform, recursos modificados manualmente são destruídos ou alterados sem aviso.

## 🚀 Arquitetura e Engenharia em Bash
Execução periódica de 'terraform plan -detailed-exitcode -no-color', interpretação dos códigos de saída (0 = sem alterações, 2 = drift detectado), parsing do plano para identificar exatamente quais recursos foram alterados e envio de sumário para o Slack.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`terraform, jq, grep, curl`

## 📌 Exemplo de Execução CLI
```bash
./tf_drift_check.sh --dir /infra/terraform/prod --alert-on-drift
```
