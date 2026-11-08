# Implementação de Pull-Through Cache no AWS ECR para Docker Hub e Quay

## 1. Cenário de Produção Real
Deploys de Kubernetes falhavam em momentos de pico por atingir o limite de taxa (rate limit) de pull do Docker Hub e instabilidades de rede externa.

## 2. O Problema Real
Garantir que todas as imagens de repositórios públicos externos sejam baixadas através de um cache seguro dentro da VPC da AWS.

## 3. Arquitetura e Engenharia da Solução
Configuração do AWS ECR Pull Through Cache Rules integrado a secrets do AWS Secrets Manager para autenticação de conta empresarial.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** AWS ECR, Pull Through Cache, Docker Hub Limits, AWS Secrets Manager
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
aws ecr describe-pull-through-cache-rules --region us-east-1
```
