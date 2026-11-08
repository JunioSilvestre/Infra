# Garantia de Imutabilidade Estrita de Tags de Imagem no Registry

## 1. Cenário de Produção Real
Desenvolvedores frequentemente sobrescreviam tags como `v1.0.0` ou `latest`, tornando auditorias de conformidade e rollbacks impossíveis.

## 2. O Problema Real
Impedir que qualquer imagem já publicada com uma determinada tag seja sobrescrita ou alterada no registry.

## 3. Arquitetura e Engenharia da Solução
Ativação de Tag Immutability Rules no Harbor e AWS ECR com expressões regulares cobrindo todos os repositórios corporativos.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Harbor Tag Immutability, AWS ECR Immutable Tags, Audit Compliance
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
docker push registry.corp.internal/app:v1.0.0 || echo 'Tag is immutable!'
```
