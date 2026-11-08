# 03 — Provisionador e Auto-Scaler de Runners Self-Hosted do GitHub Actions

## 🏢 Cenário de Negócios e Produção Real
Uso de instâncias próprias de computação para rodar builds pesados de C#/Go/Docker com economia de até 80% em custos de CI.

### ⚠️ O Problema Real
Runners ociosos geram custo desnecessário e picos de demanda criam filas gigantes.

## 🚀 Arquitetura e Engenharia em Bash
Consulta da API do GitHub Actions para checar jobs pendentes, registro de novos runners temporários via token de registro da API, execução com isolamento e encerramento limpo após a conclusão do job.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`curl, jq, tar, systemd-run, logger`

## 📌 Exemplo de Execução CLI
```bash
./runner_scaler.sh --repo 'org/repo' --token '$GH_TOKEN' --max-runners 5
```
