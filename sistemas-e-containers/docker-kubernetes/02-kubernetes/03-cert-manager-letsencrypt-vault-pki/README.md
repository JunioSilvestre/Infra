# Automação Completa de Ciclo de Vida de Certificados TLS com Cert-Manager e Vault

## 1. Cenário de Produção Real
Mais de 500 domínios corporativos expostos externamente sofriam risco constante de expiração manual de certificados SSL.

## 2. O Problema Real
Garantir renovação automática de certificados públicos Let's Encrypt via DNS-01 e certificados privados mTLS via HashiCorp Vault PKI.

## 3. Arquitetura e Engenharia da Solução
Configuração de ClusterIssuers integrados ao Cloudflare DNS e Vault AppRole, com injeção automática em Ingresses do Nginx e Istio.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** cert-manager, Cloudflare DNS-01, HashiCorp Vault PKI, Ingress-Nginx
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kubectl get certificate -A && cmctl status certificate api-tls-cert
```
