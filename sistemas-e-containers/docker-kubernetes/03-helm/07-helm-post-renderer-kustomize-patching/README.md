# Customização Avançada de Charts de Terceiros com Kustomize e Post-Renderer

## 1. Cenário de Produção Real
Charts open-source de fornecedores (como Kafka ou Redis) não ofereciam suporte nativo a certas anotações corporativas de segurança.

## 2. O Problema Real
Modificar o output final renderizado pelo Helm antes de ser enviado para a API do Kubernetes sem ter que manter um fork do chart.

## 3. Arquitetura e Engenharia da Solução
Criação de um script bash/kustomize atuando como `--post-renderer` injetando sidecars e mutando campos restritos de forma limpa.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Helm --post-renderer, Kustomize, Strategic Merge Patch, Zero-Fork Strategy
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
helm install redis-cluster bitnami/redis --post-renderer ./kustomize-patch.sh
```
