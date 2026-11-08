# Diagnóstico e Rastreamento de Descarte de Pacotes com Cilium e Hubble CLI

## 1. Cenário de Produção Real
Engenheiros reclamavam de lentidões intermitentes onde 1 a cada 50 requisições gRPC falhava sem nenhum erro reportado nos logs da aplicação.

## 2. O Problema Real
Localizar a causa raiz exata do descarte de pacotes (Policy Drop, MTU Mismatch ou Conntrack Table Full) usando inspeção de eBPF.

## 3. Arquitetura e Engenharia da Solução
Uso da ferramenta Hubble CLI em modo monitor observando descartes em tempo real com filtros de namespace e protocolo.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Hubble CLI, Cilium eBPF, Network Packet Tracing, Microservices Debugging
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
hubble observe --verdict DROPPED --namespace payment -f
```
