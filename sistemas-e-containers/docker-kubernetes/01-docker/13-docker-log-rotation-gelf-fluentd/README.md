# Auditoria e Rotação de Logs com Driver GELF e Evacuação para Fluentd

## 1. Cenário de Produção Real
Containers de bancos de dados e gateways consumiam gigabytes de arquivos json-file no disco até causar crash do sistema operacional.

## 2. O Problema Real
Eliminar arquivos de log locais descontrolados e direcionar streams stdout/stderr diretamente para o cluster de agregação de logs.

## 3. Arquitetura e Engenharia da Solução
Configuração global no daemon.json com log-driver gelf apontando para fluentd com fallback de rotação max-size=50m e max-file=3.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Docker Logging Drivers, GELF, Graylog, Fluentd, jq
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
docker run -d --log-driver=json-file --log-opt max-size=20m --log-opt max-file=5 --log-opt compress=true my-service:v1
```
