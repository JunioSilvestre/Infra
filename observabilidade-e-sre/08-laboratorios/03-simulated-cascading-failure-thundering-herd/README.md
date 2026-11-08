# Reprodução e Mitigação de Falha em Cascata por Efeito Manada (Thundering Herd)

## 1. Cenário de Produção Real
Demonstrar na prática como a recuperação de um banco de dados pode ser imediatamente derrubada pela entrada em massa de requisições de clientes.

## 2. O Problema Real
Aprender a conter o colapso utilizando filas de espera, rate limiting na borda e retentativas com jitter exponencial.

## 3. Arquitetura e Engenharia da Solução
Laboratório disparando 50.000 requisições simultâneas pós-reinício de serviço de banco de dados simulando a queda e aplicando a correção.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Thundering Herd Simulation, Cascading Failure Defense, Rate Limiting Drills
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
k6 run --vus 2000 thundering_herd_simulation.js
```
