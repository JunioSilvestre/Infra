# 19 — Orquestrador de Múltiplos Ambientes Concorrentes com Git Worktrees

## 🏢 Cenário de Negócios e Produção Real
Manutenção simultânea de versões de hotfix em produção e desenvolvimento de novas features sem precisar clonar múltiplos repositórios.

### ⚠️ O Problema Real
Alternar entre branches no mesmo diretório (git checkout) requer reinstalar dependências, rebuildar e interrompe testes locais.

## 🚀 Arquitetura e Engenharia em Bash
Gerenciamento de diretórios isolados vinculados ao mesmo repositório com 'git worktree add', sincronização de arquivos de ambiente (.env), script de inicialização de portas independentes e limpeza com 'git worktree remove'.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`git, ln, mkdir, rm`

## 📌 Exemplo de Execução CLI
```bash
./worktree_manager.sh --create hotfix-auth --branch production --setup-env
```
