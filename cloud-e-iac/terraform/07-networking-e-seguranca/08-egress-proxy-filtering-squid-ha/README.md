# Proxy de Saída em Alta Disponibilidade com Filtragem de Domínios (Squid Proxy)

## 1. Cenário de Produção Real
Normas de segurança de bancos exigem que servidores privados só consigam acessar domínios externos estritamente autorizados em lista branca (Allowlist).

## 2. O Problema Real
Bloquear qualquer tentativa de conexão direta para IPs externos não catalogados, prevenindo ataques de comando e controle (C2).

## 3. Arquitetura e Engenharia da Solução
Cluster de Squid Proxy em alta disponibilidade atrás de um Network Load Balancer com inspeção SNI e regras de domínios permitidos.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Squid Proxy, AWS NLB, Egress Filtering, Domain Allowlist, Security Governance
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
curl -x http://proxy.corp.internal:3128 -I https://github.com
```
