# Automação de Release e Catalogação de Charts com Chart Releaser e GitHub Pages

## 1. Cenário de Produção Real
Equipe de DevOps gastava tempo empacotando e atualizando manualmente o arquivo `index.yaml` a cada nova funcionalidade nos charts.

## 2. O Problema Real
Criar um pipeline autônomo onde cada merge na branch principal gera release com tag Git, publica o pacote e atualiza o índice.

## 3. Arquitetura e Engenharia da Solução
GitHub Action utilizando `chart-releaser` oficial, gerando GitHub Releases com changelog automático e hospedagem de catálogo no Pages.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Chart Releaser (cr), GitHub Actions, GitHub Pages, SemVer Automation
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
cr package charts/my-app && cr upload -o my-org -r helm-charts && cr index -o my-org -r helm-charts
```
