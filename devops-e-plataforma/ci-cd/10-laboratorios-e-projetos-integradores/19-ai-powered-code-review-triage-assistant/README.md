# 19 — Assistente de Triagem e Revisão Preliminar de Pull Requests com Inteligência Artificial

## 🏢 Cenário de Produção e Vida Real
Aceleração do ciclo de code review com análise de impacto, riscos de segurança e resumos automáticos nos PRs.

### ⚠️ O Problema Real
Revisores gastam tempo lendo centenas de linhas de código apenas para entender o contexto geral da mudança.

## 🚀 Arquitetura e Engenharia de CI/CD
Workflow acionado no PR que extrai o diff de código, envia para modelo de IA via API corporativa segura, gera resumo executivo dos arquivos afetados, aponta potenciais riscos de regressão e comenta no PR para orientar os revisores.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`curl, jq, git, gh-cli`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
./ai_pr_reviewer.sh --pr-diff /tmp/diff.patch --output /tmp/pr_summary.md
```
