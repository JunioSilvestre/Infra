# 18 — Entrega Progressiva com Flagger e Service Mesh Linkerd no Kubernetes

## 🏢 Cenário de Produção e Vida Real
Automação de canários baseada em tráfego real com medição de Golden Signals (Latência, Tráfego, Erros e Saturação).

### ⚠️ O Problema Real
Monitorar canários manualmente exige atenção constante em múltiplos painéis por horas.

## 🚀 Arquitetura e Engenharia de CI/CD
Definição do recurso Canary do Flagger integrado com Linkerd, promoção automática a cada 2 minutos caso o percentual de sucesso HTTP se mantenha > 99%, e rollback instantâneo caso contrário.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`flagger, linkerd, kubectl`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
kubectl get canaries -A
```
