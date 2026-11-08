# Gerenciamento de Robot Accounts com Escopo de Mínimo Privilégio no Harbor

## 1. Cenário de Produção Real
Pipelines de CI/CD usavam credenciais de administradores com senhas comuns para realizar push de imagens nos repositórios.

## 2. O Problema Real
Isolar os privilégios de cada pipeline gerando tokens robôs com expiração automática e permissão restrita a seus respectivos projetos.

## 3. Arquitetura e Engenharia da Solução
Automação via API do Harbor para criar Robot Accounts dedicadas com políticas RBAC estritas e injeção dinâmica em segredos de CI.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Harbor Robot Accounts, REST API Automation, Token Security, DevSecOps
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
curl -X POST -u admin:pass https://harbor.internal/api/v2.0/robots -d @robot-payload.json
```
