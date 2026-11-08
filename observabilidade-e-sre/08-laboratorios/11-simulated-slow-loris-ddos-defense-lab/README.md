# Simulação de Ataque Slowloris e Configuração de Defesa no Balanceador

## 1. Cenário de Produção Real
Atacante enviando requisições HTTP extremamente lentas, mantendo conexões abertas por horas e esgotando a capacidade de novos clientes.

## 2. O Problema Real
Configurar timeouts estritos de cabeçalho (`client_header_timeout`) e taxa mínima de transferência no proxy de entrada.

## 3. Arquitetura e Engenharia da Solução
Execução de ferramenta de teste de Slowloris contra container de teste e aplicação de diretivas defensivas de timeout no Nginx/Envoy.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Slowloris DDoS Defense, HTTP Timeouts, Nginx Hardening, Perimeter Security
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
python slowloris.py -s 150 http://localhost:8080
```
