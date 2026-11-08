# Auditoria Formal de Caminhos de Rede com AWS Network Access Analyzer

## 1. Cenário de Produção Real
Auditores de segurança queriam a comprovação matemática de que nenhum servidor de banco de dados possui rota direta para a internet.

## 2. O Problema Real
Verificar caminhos de rede e regras de tabelas de rotas e security groups de forma contínua e automatizada.

## 3. Arquitetura e Engenharia da Solução
Criação de Network Access Scopes declarativos no AWS Network Access Analyzer validando ausência de caminhos entre subnets de banco e Internet Gateways.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** AWS Network Access Analyzer, Automated Reasoning, Network Compliance, Audit Verification
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
aws ec2 start-network-insights-analysis --network-insights-path-id <PATH_ID>
```
