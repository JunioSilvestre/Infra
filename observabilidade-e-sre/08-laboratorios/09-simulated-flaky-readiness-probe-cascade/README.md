# Laboratório de Diagnóstico de Queda de Serviços por Probes de Saúde Frágeis

## 1. Cenário de Produção Real
Demonstrar como uma consulta lenta no banco de dados dentro de uma probe de readiness pode retirar 100% dos pods de serviço do tráfego.

## 2. O Problema Real
Aprender a desacoplar probes de saúde de dependências externas para evitar falsos positivos que causam indisponibilidade geral.

## 3. Arquitetura e Engenharia da Solução
Deploy de aplicação com probe acoplada ao banco, injeção de lentidão no banco e observação do desaparecimento dos endpoints do serviço.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Kubernetes Readiness Probes, Cascading Failure Triage, SRE Architecture
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
kubectl describe endpoints payment-service
```
