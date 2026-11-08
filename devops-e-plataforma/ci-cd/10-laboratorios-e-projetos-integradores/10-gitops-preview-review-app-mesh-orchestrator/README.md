# 10 — Orquestrador de Malha de Ambientes de Review Efêmeros com Domínios Dinâmicos

## 🏢 Cenário de Produção e Vida Real
Ambiente de visualização completo para designers e gerentes de produto aprovarem novas telas antes do merge.

### ⚠️ O Problema Real
Dificuldade de rodar frontend, backend e banco integrados para cada Pull Request sem custos proibitivos.

## 🚀 Arquitetura e Engenharia de CI/CD
Orquestrador que cria namespace Kubernetes efêmero, banco de dados leve com seed rápido de dados, deploy dos containers via Helm, emissão de certificado TLS com Let's Encrypt para 'pr-42.preview.corp.com' e integração com comentários do GitHub.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`kubectl, helm, external-dns, cert-manager, gh-cli`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
./orchestrate_review_app.sh --action create --pr 42
```
