# Garantia de Qualidade de Parâmetros com Helm Values JSON Schema

## 1. Cenário de Produção Real
Desenvolvedores frequentemente aplicavam valores com erros de tipo (ex: portas como string ou falta de campos obrigatórios) quebrando o cluster.

## 2. O Problema Real
Impedir a instalação ou upgrade do chart se os valores fornecidos no values.yaml não passarem por validação estrita de contrato.

## 3. Arquitetura e Engenharia da Solução
Criação e compilação do `values.schema.json` cobrindo tipagem de memória, limites de CPU, regras de regex de hosts e campos obrigatórios.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Helm JSON Schema, values.schema.json, JSONSchema Draft-07, helm-values-schema-gen
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
helm lint --values values.invalid.yaml . || echo 'Schema validation blocked invalid deployment'
```
