# Terminação TLS de Baixíssima Latência com Network Load Balancer (NLB)

## 1. Cenário de Produção Real
Aplicações de streaming financeiro processando milhões de conexões TCP por segundo sofriam com a sobrecarga de balanceadores de camada 7.

## 2. O Problema Real
Terminar conexões criptografadas HTTPS/TLS em nível de kernel com IPs estáticos e latência submilisegundo.

## 3. Arquitetura e Engenharia da Solução
Configuração de AWS Network Load Balancer com listener TLS, certificados ACM vinculados, ALPN policies e passagem transparente de IP de cliente.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** AWS Network Load Balancer (NLB), TLS Termination, ALPN, High-Throughput TCP
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
aws elbv2 describe-load-balancers --names financial-nlb
```
