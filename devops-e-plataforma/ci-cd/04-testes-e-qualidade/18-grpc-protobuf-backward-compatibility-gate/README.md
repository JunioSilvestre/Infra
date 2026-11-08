# 18 — Portão de Compatibilidade Retroativa de APIs gRPC e Schemas Protocol Buffers com Buf

## 🏢 Cenário de Produção e Vida Real
Arquiteturas de microsserviços de alto throughput comunicando via gRPC e Protocol Buffers.

### ⚠️ O Problema Real
Um desenvolvedor altera a numeração de uma tag no arquivo .proto, quebrando silenciosamente clientes legados em produção.

## 🚀 Arquitetura e Engenharia de CI/CD
Execução da ferramenta 'buf breaking' comparando os arquivos .proto do PR contra o commit da branch main, travando o build se qualquer quebra de compatibilidade for detectada.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`buf, protobuf`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
buf breaking --against '.git#branch=main'
```
