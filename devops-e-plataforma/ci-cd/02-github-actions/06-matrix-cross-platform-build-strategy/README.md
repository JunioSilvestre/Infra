# 06 — Estratégia de Build Multi-Plataforma com Matriz Dinâmica (Linux, macOS, Windows)

## 🏢 Cenário de Produção e Vida Real
Compilação e homologação de binários CLI e bibliotecas que precisam rodar em múltiplos sistemas operacionais e arquiteturas (amd64, arm64).

### ⚠️ O Problema Real
Testar apenas no Linux não detecta bugs de compilação no Windows ou comportamentos divergentes no macOS.

## 🚀 Arquitetura e Engenharia de CI/CD
Definição de matriz de execução ('strategy.matrix') cruzando SOs ('ubuntu-latest', 'macos-latest', 'windows-latest') e versões de runtime, com agregação de artefatos finais.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`github-actions, powershell, bash`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
# strategy: matrix: os: [ubuntu-latest, macos-latest] arch: [amd64, arm64]
```
