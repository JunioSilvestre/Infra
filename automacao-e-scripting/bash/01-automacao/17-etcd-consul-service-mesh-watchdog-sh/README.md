# 17 — Distributed Service Discovery & etcd/Consul Watcher (Bash)

Script em Bash puro para monitoramento contínuo de chaves em clusters distribuídos de configuração (**etcd** ou **HashiCorp Consul**), renderização dinâmica de arquivos de configuração e disparo de recarga de daemons.

## 🏢 Cenário de Negócios (Microsserviços & Cloud Infrastructure)
Em ambientes de alta escala onde novos serviços sobem e descem dinamicamente em múltiplos nós de computação, balanceadores de carga locais (como Envoy ou HAProxy) precisam atualizar suas rotas imediatamente sem necessidade de reiniciar o container ou serviço principal.

## 🚀 Arquitetura e Engenharia em Bash
- **Watch em Streaming HTTP/2 ou Long Polling:** Consumo da API v3 do etcd (`curl -N --http2 -X POST "http://127.0.0.1:2379/v3/watch"`) para escutar eventos de criação/remoção de chaves sem polling ativo na CPU.
- **Renderização Atômica de Templates:** Substituição de variáveis em arquivos `.conf.template` usando `envsubst` ou heredocs em Bash, escrevendo primeiro em `/tmp/config.new` e movendo atomicamente com `mv` para o destino final.
- **Validação Pré-Reload:** Teste de sanidade do arquivo de configuração gerado antes de disparar o reload do daemon.
- **Debouncing de Eventos:** Algoritmo em Bash para agrupar múltiplos eventos consecutivos de registro de serviços em uma única recarga, evitando tempestades de reloads (*reload storms*).

## 🛠️ Ferramentas Nativas Utilizadas
- `curl` (streaming HTTP/2 contínuo de eventos do etcd/Consul)
- `jq` (decodificação de chaves e valores codificados em base64 pela API do etcd)
- `envsubst` (renderização ultra-rápida de variáveis de ambiente em arquivos de texto)
- `systemctl` / `pkill` (sinais controlados de recarga de processos)

## 📌 Exemplo de Execução
```bash
./service_mesh_watchdog.sh --etcd-endpoint "http://10.0.1.10:2379" --prefix "/services/api/" --template /etc/haproxy/haproxy.cfg.tmpl
```

