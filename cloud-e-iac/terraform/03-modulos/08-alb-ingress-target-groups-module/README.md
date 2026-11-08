# Módulo de Balanceador de Carga ALB com Roteamento Avançado por Header e TLS

## 1. Cenário de Produção Real
Configurar balanceadores de carga com múltiplos target groups, listeners HTTPS e regras de encaminhamento gerava arquivos gigantescos de HCL.

## 2. O Problema Real
Abstrair a criação do ALB corporativo com redirecionamento automático de HTTP para HTTPS e validação de certificados.

## 3. Arquitetura e Engenharia da Solução
Módulo flexível recebendo lista de regras de roteamento, target groups com health checks customizados e anotações para logs no S3.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** AWS Application Load Balancer (ALB), ACM Certificates, HTTPS Redirect
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform plan -target=module.external_alb
```
