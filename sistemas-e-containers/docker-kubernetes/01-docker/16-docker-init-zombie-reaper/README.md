# Gerenciamento de Sinais UNIX (SIGTERM) e Prevenção de Processos Zumbis com Tini

## 1. Cenário de Produção Real
Aplicações em containers não encerravam graciosamente durante rolling updates, resultando em requisições HTTP abortadas com erro 502.

## 2. O Problema Real
O processo principal rodando como PID 1 ignorava sinais padrão do kernel e acumulava processos filhos órfãos zumbis.

## 3. Arquitetura e Engenharia da Solução
Adoção da flag `--init` ou embutimento explícito do inicializador Tini no ENTRYPOINT para repassar sinais e recolher processos órfãos.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Tini, Linux Signals (SIGTERM, SIGINT, SIGCHLD), PID Namespaces
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
docker run --init --stop-timeout 30 -d payment-processor:v2
```
