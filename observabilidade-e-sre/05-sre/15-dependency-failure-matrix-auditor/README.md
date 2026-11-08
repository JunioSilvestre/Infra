# Mapeamento de Dependências Críticas e Matriz de Impacto de Falhas

## 1. Cenário de Produção Real
Descobrir o que acontece se o provedor de e-mail, gateway de SMS ou banco de autenticação ficar fora do ar por 2 horas.

## 2. O Problema Real
Mapear visualmente o impacto de cada dependência externa na continuidade do negócio para desenhar contingências adequadas.

## 3. Arquitetura e Engenharia da Solução
Auditor de arquitetura que varre código e configs mapeando serviços externos e gerando matriz de criticidade (Tier 1 a 4).

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Dependency Failure Matrix, Single Point of Failure (SPOF) Analysis, Architecture Review
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
python audit_dependencies.py --repo-dir /home/Projetos
```
