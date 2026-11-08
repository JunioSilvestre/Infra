# Módulo de Borda de Proteção com Cloudflare DNS, WAF e Rate Limiting

## 1. Cenário de Produção Real
Fintech em NY sob constante ameaça de ataques DDoS necessitava padronizar a proteção de borda de todos os seus 200 domínios externos.

## 2. O Problema Real
Provisionar zonas DNS, regras de WAF com bloqueio por reputação de IP e rate limiting via Terraform com facilidade.

## 3. Arquitetura e Engenharia da Solução
Módulo Cloudflare encapsulando registros DNS, regras de firewall customizadas, certificados SSL/TLS universais e políticas de cache.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Cloudflare Provider, WAF Rules, DDoS Protection, Edge Security
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform apply -target=module.edge_security
```
