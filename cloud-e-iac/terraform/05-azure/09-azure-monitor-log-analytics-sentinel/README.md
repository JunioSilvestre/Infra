# Centralização de Logs e SIEM Corporativo com Log Analytics e Microsoft Sentinel

## 1. Cenário de Produção Real
Equipes de segurança precisavam correlacionar eventos de firewalls, acessos ao portal Azure e logs de pods em uma única plataforma analítica.

## 2. O Problema Real
Identificar tentativas de ataque com queries KQL em tempo real e reter logs de auditoria por até 2 anos com governança de custos.

## 3. Arquitetura e Engenharia da Solução
Workspace Log Analytics com Microsoft Sentinel habilitado, ingestão de dados de diagnósticos e regras de alerta automatizadas em KQL.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Azure Monitor, Log Analytics Workspace, Microsoft Sentinel, KQL (Kusto Query Language)
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
az monitor log-analytics workspace show --workspace-name law-central-audit --resource-group rg-sec
```
