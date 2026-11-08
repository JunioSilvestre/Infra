# Ambiente Dedicado para Práticas de Engenharia de Caos e GameDays de SRE

## 1. Cenário de Produção Real
Executar testes de caos diretamente em produção sem treinamento prévio da equipe causava pânico e interrupções desnecessárias.

## 2. O Problema Real
Disponibilizar um ambiente réplica onde a equipe de SRE possa induzir falhas graves (queda de zonas, perda de bancos) com segurança.

## 3. Arquitetura e Engenharia da Solução
Deploy de ambiente isolado com ferramentas de injeção de falhas (Chaos Mesh, AWS Fault Injection Service) pré-configuradas.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Chaos Engineering, AWS FIS, SRE GameDays, Resilience Training
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform apply -var-file=chaos-testing-env.tfvars
```
