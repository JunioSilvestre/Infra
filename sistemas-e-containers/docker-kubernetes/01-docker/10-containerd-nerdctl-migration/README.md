# Transição Operacional do Docker Daemon para containerd e nerdctl em Ambientes SRE

## 1. Cenário de Produção Real
Padronização da frota de servidores de infraestrutura para utilizar diretamente o containerd, eliminando camadas desnecessárias de abstração.

## 2. O Problema Real
Substituir comandos legados do Docker por nerdctl mantendo compatibilidade com imagens OCI, Compose e CNI plugins.

## 3. Arquitetura e Engenharia da Solução
Instalação do nerdctl-full, configuração de CNI bridge e gerenciamento de namespaces containerd (k8s.io vs default).

## 4. Ferramentas e Tecnologias
- **Ecossistema:** containerd, nerdctl, CNI (Container Network Interface), buildkitd
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
nerdctl --namespace k8s.io ps && nerdctl run -d --net cni-bridge -p 8080:80 nginx:alpine
```
