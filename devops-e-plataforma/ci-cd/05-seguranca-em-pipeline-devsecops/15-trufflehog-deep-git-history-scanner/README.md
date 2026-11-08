# 15 — Varredura Profunda de Todo o Histórico Git com TruffleHog para Chaves Esquecidas

## 🏢 Cenário de Produção e Vida Real
Auditoria em repositórios antigos herdados onde segredos podem ter sido commitados no passado e 'apagados' em commits posteriores.

### ⚠️ O Problema Real
O segredo foi removido do HEAD, mas continua acessível no histórico do repositório Git para qualquer pessoa que clonar.

## 🚀 Arquitetura e Engenharia de CI/CD
Execução do TruffleHog em modo deep scan (--since-commit ou histórico completo), validação ativa se as chaves encontradas ainda são válidas via chamadas seguras e abertura de chamado de revogação imediata.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`trufflehog, git, bash`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
trufflehog git file://. --only-verified
```
