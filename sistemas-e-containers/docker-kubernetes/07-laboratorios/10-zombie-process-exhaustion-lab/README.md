# Esgotamento de Tabela de Processos (PIDs) do Host e Mitigação com PID Limits

## 1. Cenário de Produção Real
Um container com defeito gerou milhares de processos zumbis, impedindo o próprio sistema operacional do nó de criar novos processos básicos.

## 2. O Problema Real
Configurar limites rígidos de número máximo de PIDs por pod e por nó garantindo isolamento operacional.

## 3. Arquitetura e Engenharia da Solução
Laboratório com script fork-bomb controlado em container, identificação do travamento e aplicação de `pids.max` e flags do Kubelet.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Linux PID Limits, Fork Bomb Defense, Kubelet PodPidsLimit, cgroups
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kubectl apply -f pod-with-pid-limit.yaml
```
