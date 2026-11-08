# Malha de Microsserviços Corporativa com Istio, Vault PKI e mTLS Estrito

## 1. Cenário de Produção Real
Empresa com mais de 250 microsserviços exigindo comunicação criptografada obrigatória com certificados de identidade SPIFFE/SPIRE.

## 2. O Problema Real
Provisionar autoridade certificadora intermediária no Vault emitindo certificados dinâmicos de curta duração para proxies da malha.

## 3. Arquitetura e Engenharia da Solução
Deploy do HashiCorp Vault integrado com Istio Service Mesh via Cert-Manager, forçando autenticação mTLS estrita em todos os namespaces.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Terraform, Istio Service Mesh, HashiCorp Vault PKI, SPIFFE/SPIRE, mTLS
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform apply -target=module.zero_trust_service_mesh
```
