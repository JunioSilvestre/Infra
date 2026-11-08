# Simulação e Testes de Fontes de Dados Externas com Mocking no Terraform

## 1. Cenário de Produção Real
Testes unitários falhavam quando executados em ambientes isolados sem acesso a bancos de dados externos ou APIs consultadas por data sources.

## 2. O Problema Real
Simular respostas de data sources (`data "external"`, `data "http"`) permitindo a validação completa da lógica de processamento do módulo.

## 3. Arquitetura e Engenharia da Solução
Uso de mocks e fixtures de teste dentro do framework `terraform test` desacoplando dependências externas de rede.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Terraform Mocking, Data Source Fixtures, Isolated Testing, Unit Testing
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform test -filter=tests/unit_mock.tftest.hcl
```
