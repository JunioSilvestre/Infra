# Medição de Latência de Conexões TCP em Nível de Kernel com eBPF Exporter

## 1. Cenário de Produção Real
Aplicações acusavam lentidão de rede intermitente, mas testes tradicionais de ping ICMP não mostravam nenhum problema.

## 2. O Problema Real
Medir com precisão de nanossegundos o tempo de ida e volta (RTT) de conexões TCP reais em tempo de execução sem alterar código de aplicação.

## 3. Arquitetura e Engenharia da Solução
Deploy do `ebpf_exporter` da Cloudflare executando pequenos programas em C anexados aos tracepoints do kernel do Linux `tcp_rtt`.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** eBPF Exporter, Cloudflare ebpf_exporter, Linux Kernel Tracepoints, Network Latency
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
curl -s http://localhost:9435/metrics | grep ebpf_tcp_rtt
```
