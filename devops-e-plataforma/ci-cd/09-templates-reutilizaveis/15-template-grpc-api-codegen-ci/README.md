# 15 — Template Reutilizável de Geração de Código a partir de Protocol Buffers (Buf / Protoc)

## 🏢 Cenário de Produção e Vida Real
Compilação automatizada de stubs de clientes gRPC para múltiplas linguagens (C#, TypeScript, Python, Go) a partir de um único repositório de contratos.

### ⚠️ O Problema Real
Desenvolvedores gerando código manualmente com versões diferentes do protoc, causando divergências de serialização.

## 🚀 Arquitetura e Engenharia de CI/CD
Pipeline centralizado que valida os contratos .proto com 'buf lint', gera os pacotes de clientes para cada linguagem via Buf Generate e publica nos registries correspondentes.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`buf, protoc, grpc`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
buf generate
```
