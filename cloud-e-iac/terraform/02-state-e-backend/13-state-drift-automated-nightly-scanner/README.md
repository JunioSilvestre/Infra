# Detector Automatizado de Derivação de Configuração com Alerta no Slack

## 1. Cenário de Produção Real
Administradores de nuvem realizavam alterações manuais emergenciais no console que nunca eram refletidas no repositório de Terraform.

## 2. O Problema Real
Detectar qualquer divergência entre o código Git e a realidade física da nuvem todas as noites antes do expediente começar.

## 3. Arquitetura e Engenharia da Solução
Execução de GitHub Action diária com `terraform plan -detailed-exitcode` capturando código de saída 2 (drift) e enviando payload de alerta.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Terraform Detailed Exit Code, GitHub Actions, Slack Webhooks, Drift Detection
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform plan -detailed-exitcode || if [ $? -eq 2 ]; then echo 'Drift detected!'; fi
```
