# 12 — Portão Automatizado de Auditoria de Pacotes de Aplicação (npm audit / pip-audit)

## 🏢 Cenário de Produção e Vida Real
Validação de vulnerabilidades em ecossistemas de desenvolvimento populares (Node.js, Python, .NET).

### ⚠️ O Problema Real
Submódulos indiretos de bibliotecas externas contendo malwares conhecidos ou falhas graves de execução remota de código.

## 🚀 Arquitetura e Engenharia de CI/CD
Execução de scanners nativos de ecossistema no CI com saída JSON, filtragem de vulnerabilidades com exploits públicos disponíveis e bloqueio com exibição do comando de remediação.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`npm-audit, pip-audit, dotnet-list-package`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
pip-audit --requirement requirements.txt --strict --format json
```
