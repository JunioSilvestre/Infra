# 16 — Testador e Medidor de Latência de Resolução DNS com dig e mtr

## 🏢 Cenário de Negócios e Produção Real
Aplicações web lentas onde o gargalo real está na demora para resolver domínios de bancos e APIs externas.

### ⚠️ O Problema Real
Resolvers DNS lentos adicionam centenas de milissegundos a cada chamada externa da aplicação.

## 🚀 Arquitetura e Engenharia em Bash
Execução periódica de consultas dig contra domínios críticos registrando o tempo de resposta (Query time em milissegundos), correlação com rotas mtr buscando nós de rede congestionados e emissão de alertas se o tempo passar de 50ms.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`dig, mtr, awk, sort`

## 📌 Exemplo de Execução CLI
```bash
./dns_latency_probe.sh --domains /etc/critical_domains.txt --max-latency-ms 50
```
