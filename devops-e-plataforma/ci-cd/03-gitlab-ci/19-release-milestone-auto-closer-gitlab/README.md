# 19 — Fechador e Auditor Automático de Milestones e Issues Concluídas no GitLab

## 🏢 Cenário de Produção e Vida Real
Encerramento formal de sprints e marcos de entrega de software no momento da publicação da tag de release.

### ⚠️ O Problema Real
Milestones antigas continuam abertas com issues esquecidas, distorcendo relatórios de progresso.

## 🚀 Arquitetura e Engenharia de CI/CD
Workflow acionado no evento de criação de tag que consulta a API do GitLab, localiza a milestone correspondente à versão, move issues incompletas para a próxima sprint e fecha a milestone oficialmente.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`curl, jq, bash`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
./close_milestone.sh --version v1.4.0 --next-version v1.5.0
```
