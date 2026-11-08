# 05 — Workflow de Promoção de Release Candidates (RC) para Produção

## 🏢 Cenário de Produção e Vida Real
Ciclo de release corporativo com estágios bem definidos (Alpha -> Beta -> RC -> GA).

### ⚠️ O Problema Real
Artefatos rebuildados para produção diferem dos artefatos testados no homologação.

## 🚀 Arquitetura e Engenharia de CI/CD
Build único do binário/imagem com tag RC (ex: v2.0.0-rc.1), promoção dos mesmos artefatos imutáveis entre ambientes após aprovação com gates manuais.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`github-actions, cosign, crane`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
gh workflow run promote-rc.yml -f version=v2.0.0-rc.1 -f env=production
```
