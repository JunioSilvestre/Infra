# Laboratório de Diagnóstico de Desvio de Relógio (Clock Skew) e Falha de Tokens

## 1. Cenário de Produção Real
Usuários não conseguiam fazer login porque tokens JWT eram rejeitados com erro 'token issued in the future' devido a relógio atrasado.

## 2. O Problema Real
Identificar o desvio de tempo entre servidores e restabelecer a sincronização contínua com daemons Chrony/NTP.

## 3. Arquitetura e Engenharia da Solução
Alteração intencional do relógio local do servidor, demonstração da rejeição de certificados e tokens e sincronização forçada via Chrony.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Clock Skew, Chrony NTP Synchronization, JWT Token Validation, Time Drifts
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
chronyc tracking && chronyc makestep
```
