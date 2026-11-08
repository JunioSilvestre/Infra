# Estratégia Corporativa de Gerenciamento e Upgrades de CRDs em Helm Charts

## 1. Cenário de Produção Real
Helm por padrão não atualiza CustomResourceDefinitions colocados no diretório `crds/` durante comandos `helm upgrade`.

## 2. O Problema Real
Prevenir falhas em atualizações de operadores onde novos campos adicionados nos CRDs não eram reconhecidos pelo cluster.

## 3. Arquitetura e Engenharia da Solução
Separação de pacotes: criação de um chart dedicado para CRDs gerido separadamente ou uso de scripts pre-upgrade hooks para aplicar CRDs.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Kubernetes CRDs, Helm Lifecycle Hooks, Helm Upgrade Limitations
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kubectl apply -k ./crds/ && helm upgrade --install my-operator ./operator-chart
```
