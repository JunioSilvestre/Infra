# Automação de Certificados SSL/TLS com Cert-Manager e Cloudflare DNS-01

## 1. Cenário de Produção Real
Aplicações corporativas necessitavam de certificados curinga (*.corp.com) emitidos automaticamente para dezenas de microsserviços.

## 2. O Problema Real
Resolver o desafio DNS-01 do Let's Encrypt de forma totalmente automatizada sem abrir portas HTTP para a internet pública.

## 3. Arquitetura e Engenharia da Solução
Instalação do Cert-Manager via Helm, criação de Secret com API Token da Cloudflare e aplicação de ClusterIssuer com desafio DNS.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Terraform, cert-manager, Cloudflare DNS-01, Let's Encrypt, TLS Automation
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform apply -target=helm_release.cert_manager
```
