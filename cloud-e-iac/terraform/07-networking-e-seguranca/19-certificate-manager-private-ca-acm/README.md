# Emissão e Renovação Automática de Certificados Internos com AWS Private CA

## 1. Cenário de Produção Real
Serviços corporativos internos usavam certificados autoassinados que geravam alertas de segurança e quebravam clientes HTTPS estritos.

## 2. O Problema Real
Automatizar o ciclo completo de emissão, renovação e validação de certificados digitais x509 sem intervenção humana.

## 3. Arquitetura e Engenharia da Solução
Provisionamento de autoridade certificadora com AWS Certificate Manager Private CA (ACM-PCA) e emissão de certificados associados a balanceadores.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** AWS ACM Private CA, X.509 Automation, Internal TLS Infrastructure
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
aws acm-pca describe-certificate-authority --certificate-authority-arn <ARN>
```
