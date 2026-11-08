# 13 — Distributed Log Shipper & Stream Aggregator (Bash & mkfifo)

Agregador e despachante distribuído de logs em tempo real desenvolvido em Bash puro utilizando named pipes (`mkfifo`), buffers circulares e transmissão segura via SSH/mTLS.

## 🏢 Cenário de Negócios (SRE & Observabilidade — Frotas de Servidores)
Em grandes frotas de servidores Linux onde agentes de logs comerciais (como Datadog ou Splunk) são proibidos por exigência de custo ou isolamento de rede, é necessário um shipper nativo e leve que transmita logs de auditoria e aplicação para um servidor central sem sobrecarregar a memória nem perder dados durante interrupções de conexão.

## 🚀 Arquitetura e Engenharia em Bash
- **Filas com Named Pipes (`mkfifo`):** Desacoplamento entre os processos emissores de log e o despachante de rede através de pipes nomeados no sistema de arquivos.
- **Leitura Contínua com `tail -F`:** Acompanhamento tolerante a rotação de arquivos (`truncate` ou renomeação por `logrotate`).
- **Buffer Circular e Resiliência de Conexão:** Gravação em spool local temporário em caso de perda de rede e retransmissão automática após restabelecimento.
- **Transmissão Criptografada e Comprimida:** Envio em stream através de túnel SSH com compressão nativa (`pigz` ou `gzip -c`).
- **Controle de Concorrência:** Locks com `flock` para evitar que múltiplos shippers escrevam simultaneamente no mesmo canal.

## 🛠️ Ferramentas Nativas Utilizadas
- `mkfifo` (criação de canais FIFO IPC gerenciados pelo kernel)
- `tail` (modo follow persistente com re-abertura por descritor de arquivo)
- `ssh` (transmissão segura em stream com autenticação por chave/certificado)
- `flock` (locks atômicos de descritores de arquivo)

## 📌 Exemplo de Execução
```bash
./log_shipper.sh --source /var/log/auth.log --remote-host "log-aggregator.internal" --remote-port 2222
```

