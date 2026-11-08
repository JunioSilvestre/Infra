# Padronização de Logging de Daemons de Sistema com Graylog Extended Log Format

## 1. Cenário de Produção Real
Containers que morriam abruptamente deixavam arquivos `*-json.log` bloqueados no sistema de arquivos do host Linux.

## 2. O Problema Real
Transmitir logs de containers diretamente para o concentrador de rede sem tocar o disco do servidor host.

## 3. Arquitetura e Engenharia da Solução
Configuração global no `/etc/docker/daemon.json` definindo o driver de log como `gelf` com compressão Gzip e fallbacks de rede.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** GELF (Graylog Extended Log Format), Docker Logging Drivers, System Hardening
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
cat /etc/docker/daemon.json | jq ."log-driver"
```
