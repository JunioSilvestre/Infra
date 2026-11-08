# 13 — Detector de Vazamento de Arquivos Temporários e Descritores de Arquivo Abertos

## 🏢 Cenário de Negócios e Produção Real
Testes de longa duração em scripts de monitoramento para garantir que eles não acumulem lixo no disco ou sockets zumbis.

### ⚠️ O Problema Real
Scripts que rodam em loop criam arquivos em /tmp e esquecem de apagar, lotando a memória tmpfs ao longo de semanas.

## 🚀 Arquitetura e Engenharia em Bash
Monitoramento do diretório /tmp antes e depois da execução dos testes, inspeção de descritores de arquivo abertos pelo processo em /proc/$PID/fd/ e emissão de falha se houver vazamentos.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`ls, /proc, lsof, diff`

## 📌 Exemplo de Execução CLI
```bash
./test_resource_leaks.sh --command './continuous_sync.sh --once'
```
