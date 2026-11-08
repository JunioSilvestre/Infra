# Esteira de Testes Unitários de Templates Helm com Plugin helm-unittest

## 1. Cenário de Produção Real
Alterações em condicionais `if/else` e loops `range` de templates Go quebravam manifests de produção silenciosamente.

## 2. O Problema Real
Executar testes unitários nos templates Helm no pipeline do GitHub Actions sem necessidade de conexão com um cluster Kubernetes real.

## 3. Arquitetura e Engenharia da Solução
Escrita de suítes de testes em YAML dentro da pasta `tests/` validando renderização correta de portas, seletores e volumes.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** helm-unittest plugin, CI/CD Automated Testing, Go Template Engine
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
helm unittest -3 ./my-chart
```
