# 11 — Validador e Testador de Tráfego de NetworkPolicies no Kubernetes

## 🏢 Cenário de Negócios e Produção Real
Implementação de segmentação Zero Trust em clusters Kubernetes garantindo que pods de frontend não acessem o banco de dados diretamente.

### ⚠️ O Problema Real
NetworkPolicies mal configuradas bloqueiam o tráfego legítimo ou falham silenciosamente se a CNI não suportar a política.

## 🚀 Arquitetura e Engenharia em Bash
Provisionamento de pod efêmero de teste (kubectl run test-probe --rm), disparo de testes de conectividade TCP via nc/curl contra pods de outros namespaces e validação se as regras de Ingress/Egress estão realmente bloqueando ou permitindo o tráfego.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`kubectl, nc, curl, jq`

## 📌 Exemplo de Execução CLI
```bash
./test_network_policy.sh --from-ns frontend --to-ns backend --target-port 5432 --expect deny
```
