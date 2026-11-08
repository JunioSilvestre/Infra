# Bloqueio de Domínios Maliciosos e C2 com Amazon Route 53 DNS Firewall

## 1. Cenário de Produção Real
Ataques de exfiltração de dados por tunelamento de DNS ou acesso a domínios de phishing e malware por servidores comprometidos.

## 2. O Problema Real
Inspecionar e bloquear consultas DNS recursivas originadas dentro da VPC contra bases atualizadas de inteligência de ameaças.

## 3. Arquitetura e Engenharia da Solução
Configuração de Route 53 Resolver DNS Firewall associando Domain Lists de reputação conhecida e regras de bloqueio automático de resposta.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Amazon Route 53 DNS Firewall, DNS Exfiltration Defense, Threat Intelligence
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
aws route53resolver list-firewall-rules --firewall-rule-group-id <RULE_GROUP_ID>
```
