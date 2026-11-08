# 10 — Auditor de Idade e Notificador de Rotação de Chaves de Acesso IAM na AWS

## 🏢 Cenário de Negócios e Produção Real
Políticas de segurança SOC 2 e CIS AWS Foundation exigindo que credenciais de API sejam rotacionadas a cada 90 dias.

### ⚠️ O Problema Real
Desenvolvedores criam chaves de acesso com anos de vida e nunca rotacionam até serem vazadas.

## 🚀 Arquitetura e Engenharia em Bash
Varredura de todas as contas IAM via 'aws iam list-access-keys', cálculo da idade de cada chave comparando CreateDate com a data atual, envio de notificação aos donos das chaves com mais de 75 dias e desativação compulsória das com mais de 90 dias.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`aws, jq, date, mailx, bc`

## 📌 Exemplo de Execução CLI
```bash
./iam_key_audit.sh --max-age-days 90 --warn-days 75 --disable-expired
```
