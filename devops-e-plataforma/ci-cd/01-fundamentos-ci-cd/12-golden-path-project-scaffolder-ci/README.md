# 12 — Scaffolder de 'Golden Path' para Inicialização de Novos Projetos com CI/CD Incluso

## 🏢 Cenário de Produção e Vida Real
Times de engenharia criando novos microsserviços com padrões de qualidade e segurança já embutidos.

### ⚠️ O Problema Real
Novos projetos começam sem testes, sem pipeline de segurança e com configurações divergentes.

## 🚀 Arquitetura e Engenharia de CI/CD
Gerador de templates (Cookiecutter/Plop) que instancia o repositório com Dockerfile seguro, pipeline de CI validado, linter e regras de proteção de branch ativas.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`cookiecutter, gh-cli, bash`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
./scaffold_repo.sh --name billing-service --stack dotnet10 --enable-security-gates
```
