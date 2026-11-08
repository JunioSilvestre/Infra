# Políticas Automatizadas de Expurgamento de Artefatos no AWS ECR (FinOps)

## 1. Cenário de Produção Real
Contas da AWS em Nova York registravam contas de armazenamento exorbitantes com milhares de builds de pull requests nunca deletados.

## 2. O Problema Real
Manter o repositório enxuto e dentro do orçamento estabelecido pela equipe de liderança de infraestrutura.

## 3. Arquitetura e Engenharia da Solução
Aplicação de Lifecycle Policies no AWS ECR baseadas em regras de contagem e idade de imagens, expurgando builds untagged após 7 dias.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** AWS ECR Lifecycle Policies, Cloud FinOps, AWS CLI
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
aws ecr put-lifecycle-policy --repository-name api-gateway --lifecycle-policy-text file://policy.json
```
