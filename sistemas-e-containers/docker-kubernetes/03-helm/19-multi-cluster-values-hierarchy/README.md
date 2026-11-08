# Estrutura Hierárquica de Values para Deploys Multi-Região (US-East vs US-West)

## 1. Cenário de Produção Real
Fintech em NY e Boston com clusters ativos em Virgínia e Ohio precisava manter configurações comuns e específicas sem duplicação.

## 2. O Problema Real
Eliminar divergência de configurações entre regiões aplicando arquitetura de arquivos de valores em camadas (base -> region -> env).

## 3. Arquitetura e Engenharia da Solução
Composição de comando Helm carregando `values.yaml` (global), `values-us-east-1.yaml` (regional) e `values-prod.yaml` (específico).

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Helm Cascading Values, Multi-Region Deployment, Disaster Recovery
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
helm upgrade --install app . -f values.yaml -f values-us-east.yaml -f values-prod.yaml
```
