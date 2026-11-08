# 09 — Sincronizador Automatizado de Hotfixes com Cherry-Pick Duplo

## 🏢 Cenário de Produção e Vida Real
Correção de bugs críticos aplicada na branch de produção que precisa ser portada para a branch de desenvolvimento.

### ⚠️ O Problema Real
Desenvolvedores aplicam o hotfix em produção e esquecem de levar para a main, reintroduzindo o bug no próximo release.

## 🚀 Arquitetura e Engenharia de CI/CD
Automação acionada no merge do hotfix na release branch que executa 'git cherry-pick' do commit na main e abre um PR de conciliação automático.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`git, gh-cli, bash`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
./auto_cherry_pick.sh --commit-hash abc1234 --target-branch main
```
