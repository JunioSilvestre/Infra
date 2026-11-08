# 18 — Otimizador de Fila com Cancelamento Automático de Execuções Obsoletas

## 🏢 Cenário de Produção e Vida Real
Desenvolvedores fazendo múltiplos commits rápidos em sequência na mesma branch de PR.

### ⚠️ O Problema Real
Cada commit enfileira um novo pipeline completo, desperdiçando recursos de CI para testar código que já foi superado.

## 🚀 Arquitetura e Engenharia de CI/CD
Configuração da diretiva 'concurrency: group: ${{ github.workflow }}-${{ github.ref }}, cancel-in-progress: true', cancelando imediatamente pipelines antigos quando um novo commit chega.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`github-actions concurrency`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
# concurrency: group: pr-${{ github.event.number }} cancel-in-progress: true
```
