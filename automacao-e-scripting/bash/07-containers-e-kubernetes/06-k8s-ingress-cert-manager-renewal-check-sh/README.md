# 06 — Auditor de Certificados TLS de Ingress do Kubernetes e Validação do cert-manager

## 🏢 Cenário de Negócios e Produção Real
Gestão de centenas de ingress corporativos com certificados SSL emitidos via cert-manager e Let's Encrypt.

### ⚠️ O Problema Real
Falhas no webhook do cert-manager ou nos desafios HTTP-01 deixam certificados expirarem silenciosamente.

## 🚀 Arquitetura e Engenharia em Bash
Inspeção de todos os recursos 'Certificate' via kubectl, extração do campo status.notAfter, checagem de certificados com menos de 15 dias de validade e verificação de ordens de desafio pendentes (challenges/orders).

## 🛠️ Ferramentas Nativas Linux Utilizadas
`kubectl, jq, date, openssl`

## 📌 Exemplo de Execução CLI
```bash
./check_k8s_certs.sh --namespace-all --warn-days 15
```
