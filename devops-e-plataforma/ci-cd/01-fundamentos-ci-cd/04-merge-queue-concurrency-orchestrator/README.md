# 04 — Orquestrador de Fila de Merge (Merge Queue) contra Condições de Corrida

## 🏢 Cenário de Produção e Vida Real
Centenas de desenvolvedores fazendo merge na branch main ao mesmo tempo.

### ⚠️ O Problema Real
Dois PRs passam nos testes individualmente, mas a combinação dos dois na main quebra a build.

## 🚀 Arquitetura e Engenharia de CI/CD
Criação de branches temporárias de integração especulativa onde os PRs são testados em ordem na fila antes de tocarem na main.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`github-merge-queue, git, bash`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
./merge_queue_worker.sh --pr-id 142 --target-branch main
```
