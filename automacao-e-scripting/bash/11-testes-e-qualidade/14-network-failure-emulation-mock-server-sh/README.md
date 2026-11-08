# 14 — Servidor Mock de Falhas de Rede HTTP para Validação de Resiliência de Scripts

## 🏢 Cenário de Negócios e Produção Real
Simulação de respostas de APIs externas para testar como o script se comporta diante de erros HTTP 429 (Rate Limit), 503 e timeouts.

### ⚠️ O Problema Real
É difícil testar como o script lida com erros de API reais sem derrubar a API de verdade.

## 🚀 Arquitetura e Engenharia em Bash
Mini servidor HTTP em Bash puro utilizando netcat (nc) ou socat que responde com códigos de status HTTP controlados e atrasos programados, validando a lógica de retry do script cliente.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`nc, socat, awk`

## 📌 Exemplo de Execução CLI
```bash
./mock_http_server.sh --port 8888 --response-code 503 --delay 2
```
