# Operações Rápidas de Inspeção e Cópia de Imagens sem Docker Daemon com Crane

## 1. Cenário de Produção Real
Engenheiros precisavam inspecionar metadados, listar tags e copiar imagens pesadas entre registries sem baixar gigabytes no laptop.

## 2. O Problema Real
Realizar operações de manipulação de imagens OCI em milissegundos operando diretamente com chamadas REST da especificação de Registry.

## 3. Arquitetura e Engenharia da Solução
Uso da ferramenta Google Go-ContainerRegistry (Crane) para re-tagging atômico, cópia direta entre registries e inspeção de manifests.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Crane CLI, go-containerregistry, OCI Distribution Spec
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
crane copy registry.source.com/app:v1 registry.dest.com/app:v1 && crane digest registry.dest.com/app:v1
```
