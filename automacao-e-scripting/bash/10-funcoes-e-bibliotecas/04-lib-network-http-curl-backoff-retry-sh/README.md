# 04 — Cliente HTTP com Retry Exponencial, Jitter e Circuit Breaker em Bash

## 🏢 Cenário de Negócios e Produção Real
Comunicação com APIs externas e microserviços sujeitos a falhas transitórias de rede.

### ⚠️ O Problema Real
Scripts que disparam chamadas em loop sem esperar geram sobrecarga no servidor alvo (tempestade de retentativas).

## 🚀 Arquitetura e Engenharia em Bash
Função 'http_request' encapsulando curl com retentativas automáticas, cálculo de backoff exponencial com jitter aleatório (evitando sincronização de clientes), suporte a autenticação Bearer e verificação de HTTP status code.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`curl, bc, sleep, awk`

## 📌 Exemplo de Execução CLI
```bash
source lib/http.sh && http_get --url 'https://api.corp/data' --retries 5 --max-backoff 30
```
