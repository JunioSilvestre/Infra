# 19 — Validador e Detector de Desvio entre Especificação OpenAPI e Código Real

## 🏢 Cenário de Produção e Vida Real
Garantia de que a documentação da API Swagger/OpenAPI corresponda exatamente ao que o código backend retorna.

### ⚠️ O Problema Real
A documentação diz que um campo é 'int', mas o endpoint em produção retorna 'string', quebrando integrações de parceiros.

## 🚀 Arquitetura e Engenharia de CI/CD
Geração do schema OpenAPI durante o build, comparação contra o schema homologado e validação de requisições de teste reais contra o contrato formal.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`openapi-spec-validator, dredd, prism`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
prism proxy swagger.yaml http://127.0.0.1:5000 --errors
```
