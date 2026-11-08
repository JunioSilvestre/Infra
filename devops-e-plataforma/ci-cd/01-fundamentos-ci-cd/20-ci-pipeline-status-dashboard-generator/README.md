# 20 — Gerador de Painel Executivo e Status Geral de Saúde de Pipelines da Organização

## 🏢 Cenário de Produção e Vida Real
Visibilidade centralizada para SREs e Tech Leads do status de build de todos os projetos corporativos.

### ⚠️ O Problema Real
Projetos secundários quebrando branches principais sem que ninguém do time perceba.

## 🚀 Arquitetura e Engenharia de CI/CD
Varredura contínua via API das últimas execuções de pipelines em todos os repositórios da organização, compilação de matriz de status (Verde, Vermelho, Amarelo) e geração de página estática de status.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`curl, jq, python3, gh-cli`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
./generate_status_page.sh --org my-corp --output /var/www/status.html
```
