# Plataforma de Dados Abertos e Rastreamento de Trânsito Urbano de Nova York

## 1. Cenário de Produção Real
Agência municipal de trânsito precisa processar dados de ônibus, metrôs e táxis em tempo real e disponibilizar APIs públicas resilientes.

## 2. O Problema Real
Suportar milhões de acessos públicos concorrentes sem sobrecarregar os servidores municipais internos.

## 3. Arquitetura e Engenharia da Solução
Deploy de API Gateway com CloudFront caching, camadas de proteção anti-DDoS com AWS WAF e processamento assíncrono com Kinesis Data Streams.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Terraform, AWS API Gateway, Amazon Kinesis, CloudFront, AWS WAF
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform apply -target=module.nyc_transit_data_hub
```
