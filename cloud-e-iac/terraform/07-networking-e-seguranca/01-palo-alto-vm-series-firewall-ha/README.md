# Cluster de Firewalls de Próxima Geração Palo Alto VM-Series em Alta Disponibilidade

## 1. Cenário de Produção Real
Instituição financeira em Manhattan exige inspeção profunda de pacotes (DPI) e prevenção contra ameaças conhecidas e desconhecidas.

## 2. O Problema Real
Substituir regras estáticas de portas por inspeção de camada de aplicação (App-ID) com failover ativo-passivo em menos de 2 segundos.

## 3. Arquitetura e Engenharia da Solução
Deploy de duas instâncias Palo Alto VM-Series integradas ao AWS Gateway Load Balancer (GWLB) com sincronização de sessão via HA2.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Palo Alto Networks VM-Series, Gateway Load Balancer (GWLB), App-ID, Threat Prevention
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
panos-cli show high-availability all
```
