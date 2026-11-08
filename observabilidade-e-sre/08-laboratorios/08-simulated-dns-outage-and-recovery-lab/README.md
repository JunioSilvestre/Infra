# Simulação de Apagão Completo de DNS Interno e Restauração de Emergência

## 1. Cenário de Produção Real
Treinar a equipe para restabelecer a resolução de nomes quando o cluster CoreDNS trava ou perde conectividade com servidores upstream.

## 2. O Problema Real
Executar o procedimento de emergência de bypass de DNS e restauração dos pods do CoreDNS sem reiniciar os servidores físicos.

## 3. Arquitetura e Engenharia da Solução
Desativação proposital dos pods de CoreDNS no namespace kube-system, constatação de indisponibilidade geral e recuperação passo a passo.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** CoreDNS Outage Simulation, DNS Troubleshooting, Kubernetes Networking Drills
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
kubectl scale deployment/coredns -n kube-system --replicas=0
```
