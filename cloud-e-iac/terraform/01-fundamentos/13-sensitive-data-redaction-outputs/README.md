# Proteção e Mascaramento de Dados Sensíveis com Flag sensitive em Outputs

## 1. Cenário de Produção Real
Senhas de banco geradas aleatoriamente e chaves privadas de certificados vazavam em texto claro nos logs de execução do GitHub Actions.

## 2. O Problema Real
Garantir que segredos trafegados pelo Terraform fiquem totalmente ocultos na interface do terminal e logs de CI/CD.

## 3. Arquitetura e Engenharia da Solução
Aplicação da diretiva `sensitive = true` em variáveis e outputs, e consumo seguro via `terraform output -raw db_password` apenas quando estritamente necessário.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Terraform Sensitive Attribute, CI/CD Log Redaction, DevSecOps
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform output db_password || echo '<sensitive> hidden successfully'
```
