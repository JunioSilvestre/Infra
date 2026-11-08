# 04 — Analisador em Tempo Real de Requisições Lentas e Percentil p99 em Logs Nginx

## 🏢 Cenário de Negócios e Produção Real
Identificação de endpoints de API que degradam sob tráfego sem precisar de ferramentas pagas de APM.

### ⚠️ O Problema Real
Médias de tempo de resposta escondem outliers extremos que arruínam a experiência dos usuários.

## 🚀 Arquitetura e Engenharia em Bash
Processamento em streaming do access.log com awk extraindo os campos $request_time e $upstream_response_time, cálculo matemático de percentis p50, p90 e p99 a cada 5 minutos e emissão de top 10 URLs mais lentas.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`tail, awk, sort, column, bc`

## 📌 Exemplo de Execução CLI
```bash
./nginx_p99_analyzer.sh --log /var/log/nginx/access.log --interval 300 --top 10
```
