# Integração de Identidade e Rede Híbrida entre Active Directory e Nuvens Múltiplas

## 1. Cenário de Produção Real
Corporação centenária em Connecticut com dezenas de servidores de domínio Active Directory on-premise migrando para AWS e Azure.

## 2. O Problema Real
Garantir autenticação unificada, replicação de domínio segura e resolução de nomes DNS bidirecional entre todas as nuvens.

## 3. Arquitetura e Engenharia da Solução
Módulos gerenciando AWS Directory Service (Managed Microsoft AD), Route53 Resolvers com inbound/outbound endpoints e túneis Direct Connect.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Terraform, AWS Directory Service, Route53 Resolvers, Active Directory Federation
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform apply -target=module.hybrid_identity_mesh
```
