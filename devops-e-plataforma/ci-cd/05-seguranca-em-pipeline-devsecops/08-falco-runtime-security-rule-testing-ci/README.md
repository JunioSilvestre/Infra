# 08 — Validação e Testes de Regras de Segurança em Runtime do Falco em CI

## 🏢 Cenário de Produção e Vida Real
Esteiras de desenvolvimento de regras de detecção de invasão para clusters Kubernetes.

### ⚠️ O Problema Real
Regras mal escritas geram tempestades de alertas falsos-positivos em produção ou deixam de detectar ataques reais.

## 🚀 Arquitetura e Engenharia de CI/CD
Execução do simulador do Falco em container contra arquivos PCAP e eventos de auditoria sintéticos, validando que a regra dispara apenas nos cenários de ataque simulados.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`falco, docker, jq`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
falco --validate /etc/falco/rules.d/custom-rules.yaml
```
