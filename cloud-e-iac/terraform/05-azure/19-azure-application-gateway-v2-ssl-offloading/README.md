# Balanceamento L7 de Alta Performance com Azure Application Gateway v2

## 1. Cenário de Produção Real
Sistemas de prontuários eletrônicos exigem roteamento inteligente baseado em caminhos de URL (`/api`, `/portal`), terminação SSL e cookie affinity.

## 2. O Problema Real
Descarregar o processamento criptográfico pesado de certificados digitais e prover alta disponibilidade elástica com WAF integrado.

## 3. Arquitetura e Engenharia da Solução
Application Gateway v2 com WAF ativado (OWASP 3.2), integração com certificados armazenados no Azure Key Vault e backend pools privados.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Azure Application Gateway v2, SSL Offloading, Cookie Affinity, Key Vault SSL Integration
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
az network application-gateway show --name appgw-portal --resource-group rg-network
```
