# 15 — Drenagem Graciosa e Verificação de Saúde de Serviços gRPC em Deploy

## 🏢 Cenário de Produção e Vida Real
Manutenção em microsserviços gRPC que utilizam conexões HTTP/2 multiplexadas de longa duração.

### ⚠️ O Problema Real
Derrubar o processo corta centenas de streams gRPC ativas simultaneamente.

## 🚀 Arquitetura e Engenharia de CI/CD
Sinalização de transição de estado via protocolo oficial gRPC Health Checking Protocol (NOT_SERVING), espera de encerramento das chamadas ativas com timeout e corte final limpo.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`grpc-health-probe, bash`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
grpc-health-probe -addr=localhost:50051 -service=OrderService
```
