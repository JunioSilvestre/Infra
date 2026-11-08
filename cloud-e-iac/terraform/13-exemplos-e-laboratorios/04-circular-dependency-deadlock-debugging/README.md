# Laboratório de Depuração e Resolução de Deadlocks de Dependência Circular

## 1. Cenário de Produção Real
Módulos complexos apresentando erros de ciclo de grafo (`Cycle: module.a -> module.b -> module.a`), travando deploys.

## 2. O Problema Real
Capacitar engenheiros a inspecionar o grafo de execução do Terraform e desacoplar dependências circulares de forma limpa.

## 3. Arquitetura e Engenharia da Solução
Laboratório com código HCL apresentando ciclo proposital entre security groups e regras de roteamento, e posterior refatoração estrutural.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Dependency Graph, Terraform Graph Engine, Graphviz Debugging, Clean HCL
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform graph | dot -Tpng -o graph.png
```
