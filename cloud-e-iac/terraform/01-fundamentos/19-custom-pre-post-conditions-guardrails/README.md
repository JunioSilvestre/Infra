# Garantia de Qualidade em Tempo de Execução com Preconditions e Postconditions

## 1. Cenário de Produção Real
Um certificado TLS era anexado a um balanceador antes de estar com status 'ISSUED', causando falha de conexões HTTPS dos clientes.

## 2. O Problema Real
Impor verificações booleanas estritas antes de iniciar a criação do recurso (`precondition`) ou após a sua conclusão (`postcondition`).

## 3. Arquitetura e Engenharia da Solução
Configuração de blocos `lifecycle { postcondition { condition = self.status == "ISSUED" } }` para validação de certificados.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Terraform Preconditions, Postconditions, Self-Healing Infrastructure
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform apply -target=aws_acm_certificate_validation.cert
```
