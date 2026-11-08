# Auditoria Automatizada de Eficiência de Camadas de Imagem com Dive no CI

## 1. Cenário de Produção Real
Imagens de containers estavam inchadas com arquivos residuais de compilação, elevando o tempo de deploy de clusters em mais de 10 minutos.

## 2. O Problema Real
Garantir no pipeline que nenhuma imagem exceda taxa de desperdício de camadas maior que 5% e que arquivos temporários não vazem.

## 3. Arquitetura e Engenharia da Solução
Execução do Dive via CLI no pipeline com parâmetros de falha `--ci --highestUserWastedPercent 5`.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Dive CLI, Docker Layer Optimization, CI/CD Automated Gates
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
dive --ci --highestUserWastedPercent 5 registry.corp/api:latest
```
