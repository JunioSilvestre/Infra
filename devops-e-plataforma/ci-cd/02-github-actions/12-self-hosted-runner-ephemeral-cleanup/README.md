# 12 — Higienização e Isolamento Atômico de Runners Self-Hosted Efêmeros

## 🏢 Cenário de Produção e Vida Real
Execução de testes em runners compartilhados garantindo que arquivos ou processos de um job anterior não afetem o próximo.

### ⚠️ O Problema Real
Sobras de arquivos temporários, portas abertas e variáveis de ambiente persistem entre jobs e causam falsos positivos.

## 🚀 Arquitetura e Engenharia de CI/CD
Step de post-execution executando 'docker system prune', limpeza forçada de diretórios de workspace ($GITHUB_WORKSPACE) e purga de processos zumbis com pkill.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`docker, find, pkill, bash`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
# Step 'if: always()' com rotina de limpeza profunda
```
