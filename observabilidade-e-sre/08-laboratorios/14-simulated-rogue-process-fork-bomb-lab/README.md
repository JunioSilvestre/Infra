# Simulação de Fork-Bomb e Contenção com Limites de PIDs no Linux

## 1. Cenário de Produção Real
Demonstrar o que acontece quando um script defeituoso ou malicioso cria processos filhos infinitos no servidor até travar o sistema.

## 2. O Problema Real
Aprender a blindar servidores Linux configurando limites rígidos de PIDs em nível de systemd e cgroups v2.

## 3. Arquitetura e Engenharia da Solução
Execução de fork-bomb controlado dentro de namespace isolado com limite de `pids.max=100` e validação da sobrevivência do sistema host.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Linux Fork-Bomb, cgroups v2 pids.max, System Isolation, SRE Hardening
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
systemd-run --scope -p TasksMax=50 bash -c ':(){ :|:& };:'
```
