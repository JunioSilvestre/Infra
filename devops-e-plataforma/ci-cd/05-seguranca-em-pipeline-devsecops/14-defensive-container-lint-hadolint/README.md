# 14 — Linting Defensivo de Dockerfiles com Hadolint contra Más Práticas de Segurança

## 🏢 Cenário de Produção e Vida Real
Garantia de que Dockerfiles sigam rigorosamente as melhores práticas de segurança e performance.

### ⚠️ O Problema Real
Instalação de pacotes sem fixar versão, uso de root como usuário padrão e falta de limpeza de caches no Dockerfile.

## 🚀 Arquitetura e Engenharia de CI/CD
Execução do Hadolint no pipeline de CI analisando as instruções do Dockerfile, exigindo usuário não-root (USER appuser) e travando comandos arriscados como 'sudo' ou 'curl | bash'.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`hadolint, docker`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
hadolint Dockerfile --failure-threshold warning
```
