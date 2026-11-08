# Padrão Arquitetural de Auto-Recuperação de Infraestrutura (Self-Healing)

## 1. Cenário de Produção Real
Servidores que apresentavam falhas de hardware ou lentidão exigiam acionamento manual do engenheiro de plantão de madrugada.

## 2. O Problema Real
Projetar a infraestrutura para detectar a própria degradação e substituir instâncias defeituosas de forma totalmente autônoma.

## 3. Arquitetura e Engenharia da Solução
Combinação de Auto Scaling Groups com health checks de balanceador, alarmes CloudWatch e ações de recuperação automática de nós.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Self-Healing Architecture, SRE Resilience, Automated Recovery, CloudWatch Alarms
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
aws autoscaling describe-auto-scaling-groups --auto-scaling-group-names prod-fleet
```
