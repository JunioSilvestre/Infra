# Construção de Library Chart Compartilhado para Padronização de 100+ Times

## 1. Cenário de Produção Real
Centenas de Dockerfiles e Helm charts criados individualmente continham inconsistências de labels, anotações de métricas e probes.

## 2. O Problema Real
Centralizar toda a lógica complexa de manifests em um 'Library Chart' reutilizável, simplificando os charts das aplicações para poucas linhas.

## 3. Arquitetura e Engenharia da Solução
Desenvolvimento de chart com tipo `type: library`, exportando templates `_helpers.tpl` reutilizáveis via `include` em todos os repositórios.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Helm Library Charts, Go Templates, Named Templates, Enterprise Standardization
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
helm template test-app ./application-chart | grep -E 'app.kubernetes.io/managed-by'
```
