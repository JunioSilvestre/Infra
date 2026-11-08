# Distribuição Segura de Helm Charts como Artefatos OCI em AWS ECR

## 1. Cenário de Produção Real
A manutenção de repositórios HTTP tradicionais de Helm (index.yaml) gerava lentidão e riscos de sincronismo em clusters distribuídos.

## 2. O Problema Real
Adotar a especificação OCI para versionar e armazenar charts no mesmo container registry corporativo com controle de acesso IAM.

## 3. Arquitetura e Engenharia da Solução
Empacotamento com `helm package`, login autenticado em OCI registry e push de artefatos com versionamento estrito semver.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Helm OCI, AWS ECR, Azure Container Registry (ACR), SemVer
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
helm package my-chart/ && helm push my-chart-1.2.0.tgz oci://123456789.dkr.ecr.us-east-1.amazonaws.com/helm
```
