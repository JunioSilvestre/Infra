# VPN Client-to-Site sem Servidor com AWS Client VPN e Autenticação AD

## 1. Cenário de Produção Real
Manter servidores VPN legados gerava problemas de escalabilidade quando centenas de engenheiros faziam login simultâneo em dias de home office.

## 2. O Problema Real
Disponibilizar um serviço de VPN sob demanda, altamente escalável e integrado com o diretório corporativo de usuários.

## 3. Arquitetura e Engenharia da Solução
Deploy do AWS Client VPN Endpoint associado a subnets privadas, certificados emitidos via ACM e regras de autorização granulares por grupo.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** AWS Client VPN, Microsoft Active Directory, OpenVPN Protocols, Cloud Networking
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
aws ec2 describe-client-vpn-endpoints
```
