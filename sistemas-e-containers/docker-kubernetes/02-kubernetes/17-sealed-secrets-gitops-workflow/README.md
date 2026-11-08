# Gerenciamento Seguro de Segredos em Repositórios Git com Bitnami Sealed Secrets

## 1. Cenário de Produção Real
Adoção de GitOps com ArgoCD exigia versionar todos os manifests do Kubernetes no GitHub, mas segredos normais não podem ficar em texto claro.

## 2. O Problema Real
Criptografar segredos assimetricamente de modo que somente o cluster de destino consiga decifrá-los usando sua chave privada interna.

## 3. Arquitetura e Engenharia da Solução
Instalação do Sealed Secrets Controller no cluster e uso da CLI kubeseal pelos desenvolvedores gerando SealedSecret CRDs seguros para commit.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Bitnami Sealed Secrets, kubeseal, GitOps, Criptografia Asimétrica RSA
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kubeseal --controller-namespace kube-system --format yaml < secret.yaml > sealed-secret.yaml
```
