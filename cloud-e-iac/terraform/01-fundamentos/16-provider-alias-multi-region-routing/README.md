# Provisionamento Multi-Região Concorrente com Provider Aliasing (us-east-1 e us-east-2)

## 1. Cenário de Produção Real
Aplicações precisam de recursos provisionados em Ohio (us-east-2), mas certificados CloudFront SSL exigem criação obrigatória em Virgínia (us-east-1).

## 2. O Problema Real
Orquestrar recursos em múltiplas regiões geográficas dentro do mesmo workspace de Terraform de forma atômica e declarativa.

## 3. Arquitetura e Engenharia da Solução
Configuração de múltiplos blocos `provider "aws"` com o atributo `alias = "virginia"` e amarração nos recursos via `provider = aws.virginia`.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** AWS Multi-Region, Terraform Provider Alias, CloudFront ACM
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform plan -target=aws_acm_certificate.cdn_cert
```
