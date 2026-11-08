# Arquitetura Limpa: Composição de Módulos vs Herança em Infraestrutura

## 1. Cenário de Produção Real
Módulos monolíticos com centenas de variáveis tentavam fazer tudo ao mesmo tempo, tornando-se frágeis e impossíveis de refatorar.

## 2. O Problema Real
Aplicar o princípio de responsabilidade única (Single Responsibility Principle) criando pequenos blocos composíveis e desacoplados.

## 3. Arquitetura e Engenharia da Solução
Arquitetura baseada em composição onde módulos de rede, computação e dados interagem via outputs sem acoplamento rígido.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Composition over Inheritance, Single Responsibility Principle, Software Architecture
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform plan -target=module.compute
```
