# Proteção Perimetral de Aplicações com AWS WAF v2 e Regras Gerenciadas

## 1. Cenário de Produção Real
Sites públicos e APIs corporativas recebiam ondas diárias de ataques de credential stuffing, SQL Injection e raspadores maliciosos.

## 2. O Problema Real
Bloquear requisições maliciosas na borda da nuvem antes que o tráfego atinja os servidores de aplicação ou balanceadores.

## 3. Arquitetura e Engenharia da Solução
Deploy de Web ACL no AWS WAF v2 contendo AWS Managed Rule Sets (Core Rule Set, SQLi, Known Bad Inputs) e rate limiting por IP de cliente.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** AWS WAF v2, Web ACL, Threat Intelligence, DDoS Mitigation
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
aws wafv2 get-web-acl --name corp-edge-waf --scope CLOUDFRONT --id <ID>
```
