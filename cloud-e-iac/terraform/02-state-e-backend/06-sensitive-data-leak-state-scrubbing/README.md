# Higienização e Remoção de Segredos Vazados Dentro do Arquivo de Estado

## 1. Cenário de Produção Real
Um certificado TLS com chave privada RSA ou senha de banco foi acidentalmente inserido em texto claro dentro do arquivo `.tfstate`.

## 2. O Problema Real
Eliminar o dado sensível do arquivo de estado e de todas as versões históricas do S3 sem recriar os recursos em produção.

## 3. Arquitetura e Engenharia da Solução
Extração do estado via `terraform state pull`, sanitização controlada via script Python, `state push` e expurgo de versões antigas no bucket S3.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Data Sanitization, terraform state pull/push, DevSecOps Compliance
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform state pull | jq '.resources[].instances[].attributes | del(.private_key)' > clean_state.json
```
