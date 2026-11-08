# Toolkit e Automação de Exercícios Práticos de Caos (GameDays de SRE)

## 1. Cenário de Produção Real
Validar se a equipe de operações sabe agir rapidamente quando um nó de banco de dados trava ou um switch de rede falha.

## 2. O Problema Real
Executar testes de caos estruturados e controlados durante o horário de expediente com botão de parada de emergência (Abort Switch).

## 3. Arquitetura e Engenharia da Solução
Scripts de injeção de falhas com Chaos Mesh aplicando partição de rede temporária, saturação de CPU e monitoramento da reação da equipe.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Chaos Engineering GameDay, SRE Resilience, Fault Injection, Abort Mechanisms
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
kubectl apply -f gameday-scenarios/network-delay-500ms.yaml
```
