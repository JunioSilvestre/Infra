# Desacoplamento de Health Checks: Sondas Rasas (Shallow) vs Profundas (Deep)

## 1. Cenário de Produção Real
Probes de liveness que consultavam o banco de dados derrubavam todos os pods do Kubernetes quando o banco sofria uma pequena lentidão.

## 2. O Problema Real
Separar probes de Liveness (o processo está vivo?), Readiness (o pod pode receber tráfego?) e Startup probes de inicialização.

## 3. Arquitetura e Engenharia da Solução
Implementação de endpoints de saúde segregados (`/healthz` rasa vs `/readyz` verificando dependências imediatas desacopladas).

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Kubernetes Probes Architecture, Health Check Design, Cascading Outage Prevention
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
curl -I http://localhost:8080/healthz && curl -I http://localhost:8080/readyz
```
