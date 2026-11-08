# Laboratório de Simulação de Partição de Rede e Prevenção de Split-Brain

## 1. Cenário de Produção Real
Testar o comportamento de bancos de dados multi-região e clusters quando links físicos dedicados são rompidos.

## 2. O Problema Real
Validar se os parâmetros de timeout e failover impedem a ocorrência de split-brain e divergência de dados.

## 3. Arquitetura e Engenharia da Solução
Injeção de regras de bloqueio de tráfego inter-regiões e acompanhamento das métricas de replicação e isolamento de nós.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Network Partitioning, Split-Brain Mitigation, High Availability Drills, Chaos Testing
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
aws ec2 create-network-acl-entry --network-acl-id <ID> --rule-number 1 --protocol -1 --rule-action deny
```
