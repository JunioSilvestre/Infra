# Arquitetura de Perímetro Zero-Trust com Isolamento Criptográfico Completo

## 1. Cenário de Produção Real
Conexões entre serviços internos trafegavam sem criptografia, presumindo que a rede interna era segura.

## 2. O Problema Real
Aplicar o princípio Zero-Trust: nunca confiar, sempre verificar, exigindo autenticação criptográfica e TLS mútuo em 100% das comunicações.

## 3. Arquitetura e Engenharia da Solução
Configuração de VPC Endpoints privados, certificados internos emitidos sob demanda e bloqueio estrito de tráfego não autenticado.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Zero-Trust Architecture, Mutual TLS (mTLS), VPC PrivateLink, Network Hardening
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform plan -target=module.zero_trust_network
```
