# 06 — Criptografia Unidirecional de Segredos no Git com Bitnami Sealed Secrets

## 🏢 Cenário de Produção e Vida Real
Permitir que desenvolvedores criem e comitem segredos no Git sem terem acesso à chave privada de decodificação.

### ⚠️ O Problema Real
Desenvolvedores não devem conhecer as senhas reais do banco de produção.

## 🚀 Arquitetura e Engenharia de CI/CD
Uso da ferramenta 'kubeseal' que criptografa o Secret com a chave pública do cluster, gerando um manifesto SealedSecret seguro para o Git que apenas o controlador dentro do cluster consegue abrir.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`kubeseal, kubectl, yaml`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
kubeseal --controller-name=sealed-secrets --format yaml < secret.yaml > sealed-secret.yaml
```
