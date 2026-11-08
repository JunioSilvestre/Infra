# Geração Automática de Diagramas Arquiteturais nos Pull Requests

## 1. Cenário de Produção Real
Revisores de código tinham dificuldade para entender o impacto arquitetural de PRs complexos que criavam dezenas de novos recursos.

## 2. O Problema Real
Gerar um diagrama visual da infraestrutura proposta e inseri-lo como imagem diretamente nos comentários do Pull Request.

## 3. Arquitetura e Engenharia da Solução
Integração do Rover ou Blast Radius no pipeline convertendo o plano JSON em diagrama vetorial e postando a imagem via API do GitHub.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Terraform Rover, Architecture as Code, Visual Code Review, GitHub Bot
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
rover -planPath tfplan.json --genImage
```
