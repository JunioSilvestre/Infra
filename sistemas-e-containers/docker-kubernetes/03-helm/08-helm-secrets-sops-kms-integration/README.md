# Versionamento Seguro de Valores Sensíveis com Helm-Secrets e AWS KMS em Boston

## 1. Cenário de Produção Real
Comitê de segurança proibia senhas de banco e tokens de API em arquivos values.yaml em texto puro.

## 2. O Problema Real
Permitir que segredos sejam criptografados no Git e descriptografados dinamicamente apenas durante o pipeline de deploy autorizado.

## 3. Arquitetura e Engenharia da Solução
Integração do plugin `helm-secrets` com Mozilla SOPS e AWS KMS, decodificando `secrets.prod.yaml` em tempo de execução na memória.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** helm-secrets, Mozilla SOPS, AWS KMS, Age Encryption, GitOps Security
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
helm secrets upgrade --install backend-api ./chart -f values.yaml -f secrets.prod.yaml
```
