# Desenvolvimento de Plugin de Fonte de Dados Customizada para Grafana em React/Go

## 1. Cenário de Produção Real
Empresa possuía um data lake proprietário em Connecticut com API customizada que não possuía conector oficial no catálogo do Grafana.

## 2. O Problema Real
Permitir que operadores consultem dados históricos do lago proprietário com a mesma facilidade com que consultam o Prometheus.

## 3. Arquitetura e Engenharia da Solução
Construção de plugin com backend em Go para chamadas seguras e frontend em React/TypeScript com componentes oficiais `@grafana/ui`.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Grafana Plugin SDK, Go Backend, React/TypeScript Frontend, @grafana/ui
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
yarn build && grafana-cli plugins reload
```
