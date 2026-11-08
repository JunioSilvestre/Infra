# Arquitetura de Isolamento de Camadas para Redução de Raio de Explosão

## 1. Cenário de Produção Real
Fintech em Wall Street sofrendo com deploys arriscados onde a alteração de um bucket de aplicação destruía acidentalmente a rede corporativa.

## 2. O Problema Real
Isolar estritamente as camadas de infraestrutura (Network, Data, Compute, App) em repositórios e estados totalmente independentes.

## 3. Arquitetura e Engenharia da Solução
Definição arquitetural de separação em camadas onde cada domínio possui seu ciclo de vida, permissões IAM e esteiras próprias.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Blast Radius Architecture, Layered Infrastructure, SRE Principles
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform -chdir=layers/01-network plan
```
