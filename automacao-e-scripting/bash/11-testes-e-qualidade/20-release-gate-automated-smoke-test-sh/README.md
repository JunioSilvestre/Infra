# 20 — Portão Automatizado de Testes de Fumaça (Smoke Tests) Pré-Release de Infraestrutura

## 🏢 Cenário de Negócios e Produção Real
Última linha de defesa antes de publicar uma nova versão dos scripts de infraestrutura para todos os servidores da empresa.

### ⚠️ O Problema Real
Mudanças pequenas de última hora quebram o instalador básico da infraestrutura.

## 🚀 Arquitetura e Engenharia em Bash
Execução completa de todos os checks em sequência: Lint (ShellCheck) -> Formatação (shfmt) -> Testes Unitários (BATS) -> Idempotência -> Teste de Fumaça em VM limpa, com trava de release e geração de changelog assinado.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`bats, shellcheck, shfmt, git`

## 📌 Exemplo de Execução CLI
```bash
./release_gate.sh --version v2.1.0 --strict
```
