# 14 — Pipeline Leve de Coleta e Encaminhamento de Logs com Fluent Bit / Vector

## 🏢 Cenário de Negócios e Produção Real
Substituição de agentes pesados de log em servidores com pouca memória RAM disponível.

### ⚠️ O Problema Real
Agentes Java ou Python consomem 500MB de RAM apenas para ler arquivos de texto e enviar para a rede.

## 🚀 Arquitetura e Engenharia em Bash
Script de provisionamento e configuração atômica de instâncias leves de Fluent Bit ou Vector em C/Rust, configuração de parsers regex customizados para logs da aplicação e roteamento seguro com TLS.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`fluent-bit, vector, systemctl, curl`

## 📌 Exemplo de Execução CLI
```bash
./setup_log_pipeline.sh --collector fluent-bit --destination elasticsearch:9200
```
