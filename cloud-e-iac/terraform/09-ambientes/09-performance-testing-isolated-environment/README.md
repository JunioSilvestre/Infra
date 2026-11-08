# Ambiente de Testes de Carga Efêmero com Dimensionamento Idêntico a Produção

## 1. Cenário de Produção Real
Testes de carga executados em staging distorciam métricas porque os servidores eram 4 vezes menores que os de produção.

## 2. O Problema Real
Subir uma réplica de infraestrutura 1:1 com a de produção por 4 horas para testes de estresse e destruí-la imediatamente após os testes.

## 3. Arquitetura e Engenharia da Solução
Módulo acionado sob demanda provisionando nós computacionais de grande porte, banco de dados multi-AZ e geradores de carga k6.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Performance Testing, Stress Testing Infrastructure, FinOps Just-in-Time Compute
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform apply -var-file=load-test-100k-rps.tfvars
```
