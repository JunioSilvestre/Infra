# Microsegmentação Zero-Trust de Ambientes com Security Groups Granulares

## 1. Cenário de Produção Real
A invasão de um servidor web permitia movimentação lateral imediata para outros servidores da mesma subnet devido ao uso de regras abertas `0.0.0.0/0`.

## 2. O Problema Real
Garantir que instâncias computacionais conversem exclusivamente com serviços autorizados em portas mínimas e endereçadas por Security Group ID.

## 3. Arquitetura e Engenharia da Solução
Matriz de regras de Security Groups cruzados no Terraform sem referências a CIDRs abertos, amarrando cada camada arquitetural estritamente.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Zero-Trust Microsegmentation, AWS Security Groups, Defense-in-Depth
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
aws ec2 describe-security-groups --filters Name=group-name,Values=prod-db-sg
```
