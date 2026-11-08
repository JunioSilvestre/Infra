# Gestão de Escalas de Plantão e Políticas de Escalonamento como Código (PagerDuty)

## 1. Cenário de Produção Real
Trocas de plantão (On-Call) eram feitas em planilhas manuais, fazendo com que alertas críticos da madrugada caíssem no vazio.

## 2. O Problema Real
Gerenciar escalas, rotações de engenheiros, horários de cobertura e regras de escalonamento como código versionado via Terraform.

## 3. Arquitetura e Engenharia da Solução
Módulo Terraform configurando o provedor PagerDuty provisionando Schedules, Escalation Policies e serviços vinculados aos alertas de SRE.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** PagerDuty as Code, Terraform, On-Call Rotation, Incident Escalation
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform apply -target=module.sre_oncall_schedules
```
